// MARK: - DynamicArrayInt

struct DynamicArrayInt {
  private(set) var count: Int

  private var staticArray: StaticArrayInt

  var capacity: Int {
    return self.staticArray.count
  }
}

// MARK: - Initialization

extension DynamicArrayInt {
  init() {
    self.count = 0
    self.staticArray = StaticArrayInt()
  }

  init(repeating: Int, count: Int) {
    self.count = count
    self.staticArray = StaticArrayInt(repeating: repeating, count: count)
  }

  init(
    unsafeUninitializedCapacity: Int,
    initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Int>,
                                   _ initializedCount: inout Int) throws -> Void
  ) rethrows {
    self.count = unsafeUninitializedCapacity
    self.staticArray = try StaticArrayInt(
      unsafeUninitializedCapacity: unsafeUninitializedCapacity,
      initializingWith: initializer
    )
  }
}

// MARK: - ExpressibleByArrayLiteral

extension DynamicArrayInt: ExpressibleByArrayLiteral {
  init(arrayLiteral: Int...) {
    self.init(unsafeUninitializedCapacity: arrayLiteral.count) { buffer, count in
      (_, count) = buffer.initialize(from: arrayLiteral)
    }
  }
}

// MARK: - Collection
// And Sequence

extension DynamicArrayInt: Collection {
  var startIndex: Int {
    return 0
  }

  var endIndex: Int {
    return self.count
  }

  func index(after i: Int) -> Int {
    return i + 1
  }

  subscript(_ index: Int) -> Int {
    get {
      guard self.indices.contains(index) else {
        fatalError("Index out of range")
      }

      return self.staticArray[index]
    }

    set(element) {
      guard self.indices.contains(index) else {
        fatalError("Index out of range")
      }

      self.staticArray[index] = element
    }
  }
}

// MARK: - BidirectionalCollection

extension DynamicArrayInt: BidirectionalCollection {
  func index(before i: Int) -> Int {
    return i - 1
  }
}

// MARK: - RandomAccessCollection

// Because Self.Index == Int: Stridable, there is nothing to implement
extension DynamicArrayInt: RandomAccessCollection {}


// MARK: - MutableCollection

// Because subscript { set } is defined above, there is nothing to implement
extension DynamicArrayInt: MutableCollection {}

// MARK: - CustomStringConvertible

extension DynamicArrayInt: CustomStringConvertible {
  var description: String {
    return "[" + self.map { String(reflecting: $0) }.joined(separator: ", ") + "]"
  }
}

// MARK: - CustomDebugStringConvertible

extension DynamicArrayInt: CustomDebugStringConvertible {
  var debugDescription: String {
    return self.description
  }
}

// MARK: - Equatable

extension DynamicArrayInt: Equatable {
  static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.elementsEqual(rhs)
  }
}

// MARK: - Hashable

extension DynamicArrayInt: Hashable {
  func hash(into hasher: inout Hasher) {
    self.forEach { hasher.combine($0) }
  }
}

// MARK: - Combination

extension DynamicArrayInt {
  static func + (lhs: Self, rhs: Self) -> Self {
    return Self(unsafeUninitializedCapacity: lhs.count + rhs.count) { buffer, _ in
      for (index, element) in lhs.enumerated() {
        buffer[index] = element
      }

      for (index, element) in rhs.enumerated() {
        buffer[lhs.count + index] = element
      }
    }
  }
}

// MARK: - withUnsafeBufferPointer
// And for verifying value type with copy-on-write semantics

extension DynamicArrayInt {
  func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Int>) throws -> R) rethrows -> R {
    return try self.staticArray.withUnsafeBufferPointer(body)
  }
}

// MARK: - RangeReplaceableCollection

extension DynamicArrayInt: RangeReplaceableCollection {
  private mutating func resize(capacity: Int) {
    self.staticArray = StaticArrayInt(unsafeUninitializedCapacity: capacity) { buffer, _ in
      _ = buffer.initialize(from: self)
    }
  }

  mutating func replaceSubrange<C>(
    _ subrange: Range<Self.Index>,
    with newElements: C
  ) where C : Collection, Self.Element == C.Element {
    let range2ndThird = subrange.relative(to: self)

    guard self.startIndex <= range2ndThird.lowerBound else {
      fatalError("Subrange start is negative")
    }

    guard range2ndThird.upperBound <= self.endIndex else {
      fatalError("Subrange extends past the end")
    }

    let slice1stThird = self[self.startIndex..<range2ndThird.lowerBound]
    let slice3rdThird = self[range2ndThird.upperBound..<self.endIndex]

    let newCount = self.count - range2ndThird.count + newElements.count

    if self.capacity < newCount {
      let capacityDoubled = Swift.max(self.capacity, 1) * 2
      let newCountRoundedUpToEven = Int((Double(newCount) / 2.0).rounded() * 2)
      let capacity = Swift.max(capacityDoubled, newCountRoundedUpToEven)

      self.resize(capacity: capacity)
    }

    self.count = newCount

    var index = self.startIndex

    for element in slice1stThird {
      self[index] = element
      index = self.index(after: index)
    }

    for element in newElements {
      self[index] = element
      index = self.index(after: index)
    }

    for element in slice3rdThird {
      self[index] = element
      index = self.index(after: index)
    }
  }
}
