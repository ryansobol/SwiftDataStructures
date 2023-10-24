// MARK: - DynamicArray

struct DynamicArray<Element> {
  private(set) var count: Int

  private var staticArray: StaticArray<Element>

  var capacity: Int {
    return self.staticArray.count
  }
}

// MARK: - Initialization

extension DynamicArray {
  init() {
    self.count = 0
    self.staticArray = StaticArray()
  }

  init(repeating: Element, count: Int) {
    self.count = count
    self.staticArray = StaticArray(repeating: repeating, count: count)
  }

  init(
    unsafeUninitializedCapacity: Int,
    initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Element>,
                                   _ initializedCount: inout Int) throws -> Void
  ) rethrows {
    self.count = unsafeUninitializedCapacity
    self.staticArray = try StaticArray(
      unsafeUninitializedCapacity: unsafeUninitializedCapacity,
      initializingWith: initializer
    )
  }
}

// MARK: - ExpressibleByArrayLiteral

extension DynamicArray: ExpressibleByArrayLiteral {
  init(arrayLiteral: Element...) {
    self.init(unsafeUninitializedCapacity: arrayLiteral.count) { buffer, count in
      (_, count) = buffer.initialize(from: arrayLiteral)
    }
  }
}

// MARK: - Collection
// And Sequence

extension DynamicArray: Collection {
  var startIndex: Int {
    return 0
  }

  var endIndex: Int {
    return self.count
  }

  func index(after i: Int) -> Int {
    return i + 1
  }

  subscript(_ index: Int) -> Element {
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

extension DynamicArray: BidirectionalCollection {
  func index(before i: Int) -> Int {
    return i - 1
  }
}

// MARK: - RandomAccessCollection

// Because Self.Index == Int: Stridable, there is nothing to implement
extension DynamicArray: RandomAccessCollection {}


// MARK: - MutableCollection

// Because subscript { set } is defined above, there is nothing to implement
extension DynamicArray: MutableCollection {}

// MARK: - CustomStringConvertible

extension DynamicArray: CustomStringConvertible {
  var description: String {
    return "[" + self.map { String(reflecting: $0) }.joined(separator: ", ") + "]"
  }
}

// MARK: - CustomDebugStringConvertible

extension DynamicArray: CustomDebugStringConvertible {
  var debugDescription: String {
    return self.description
  }
}

// MARK: - Equatable

extension DynamicArray: Equatable where Element: Equatable {
  static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.elementsEqual(rhs)
  }
}

// MARK: - Hashable

extension DynamicArray: Hashable where Element: Hashable {
  func hash(into hasher: inout Hasher) {
    self.forEach { hasher.combine($0) }
  }
}

// MARK: - Combination

extension DynamicArray {
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

extension DynamicArray {
  func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Element>) throws -> R) rethrows -> R {
    return try self.staticArray.withUnsafeBufferPointer(body)
  }
}

// MARK: - RangeReplaceableCollection

extension DynamicArray: RangeReplaceableCollection {
  private mutating func resize(capacity: Int) {
    self.staticArray = StaticArray(unsafeUninitializedCapacity: capacity) { buffer, _ in
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
