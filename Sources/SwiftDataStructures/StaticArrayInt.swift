// MARK: - StaticArrayInt

struct StaticArrayInt {
  private var storage: Storage
}

// MARK: - StaticArrayInt.Storage

extension StaticArrayInt {
  private final class Storage {
    let count: Int
    let elements: UnsafeMutablePointer<Int>

    convenience init(from other: Storage) {
      self.init(unsafeUninitializedCapacity: other.count) { buffer, count in
        let otherBuffer = UnsafeMutableBufferPointer(start: other.elements, count: other.count)

        (_, count) = buffer.initialize(from: otherBuffer)
      }
    }

    init(unsafeUninitializedCapacity: Int,
         initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Int>,
                                        _ initializedCount: inout Int) throws -> Void) rethrows
    {
      if unsafeUninitializedCapacity < 0 {
        fatalError("Can't construct StaticArrayInt with count < 0")
      }

      self.elements = UnsafeMutablePointer<Int>.allocate(capacity: unsafeUninitializedCapacity)

      var count = unsafeUninitializedCapacity
      var buffer = UnsafeMutableBufferPointer(start: self.elements, count: count)

      try initializer(&buffer, &count)

      self.count = count
    }

    func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Int>) throws -> R) rethrows -> R {
      return try body(UnsafeBufferPointer(start: self.elements, count: self.count))
    }

    deinit {
      self.elements.deinitialize(count: self.count)
      self.elements.deallocate()
    }
  }
}

// MARK: - Initialization

extension StaticArrayInt {
  init() {
    self.init(unsafeUninitializedCapacity: 0) { _, _ in }
  }

  init(repeating: Int, count: Int) {
    self.init(unsafeUninitializedCapacity: count) { buffer, _ in
      buffer.initialize(repeating: repeating)
    }
  }

  init(
    unsafeUninitializedCapacity: Int,
    initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Int>,
                                   _ initializedCount: inout Int) throws -> Void
  ) rethrows {
    self.storage = try Storage(
      unsafeUninitializedCapacity: unsafeUninitializedCapacity,
      initializingWith: initializer
    )
  }
}

// MARK: - ExpressibleByArrayLiteral

extension StaticArrayInt: ExpressibleByArrayLiteral {
  init(arrayLiteral: Int...) {
    self.init(unsafeUninitializedCapacity: arrayLiteral.count) { buffer, count in
      (_, count) = buffer.initialize(from: arrayLiteral)
    }
  }
}

// MARK: - Collection
// And Sequence

extension StaticArrayInt: Collection {
  var startIndex: Int {
    return 0
  }

  var endIndex: Int {
    return self.storage.count
  }

  func index(after i: Int) -> Int {
    return i + 1
  }

  subscript(_ index: Int) -> Int {
    get {
      guard self.indices.contains(index) else {
        fatalError("Index out of range")
      }

      return self.storage.elements[index]
    }

    set(element) {
      guard self.indices.contains(index) else {
        fatalError("Index out of range")
      }

      if !isKnownUniquelyReferenced(&self.storage) {
        self.storage = Storage(from: self.storage)
      }

      self.storage.elements[index] = element
    }
  }
}

// MARK: - BidirectionalCollection

extension StaticArrayInt: BidirectionalCollection {
  func index(before i: Int) -> Int {
    return i - 1
  }
}

// MARK: - RandomAccessCollection

// Because Self.Index == Int: Stridable, there is nothing to implement
extension StaticArrayInt: RandomAccessCollection {}

// MARK: - MutableCollection

// Because subscript { set } is defined above, there is nothing to implement
extension StaticArrayInt: MutableCollection {}

// MARK: - CustomStringConvertible

extension StaticArrayInt: CustomStringConvertible {
  var description: String {
    return "[" + self.map { String(describing: $0) }.joined(separator: ", ") + "]"
  }
}

// MARK: - CustomDebugStringConvertible

extension StaticArrayInt: CustomDebugStringConvertible {
  var debugDescription: String {
    return self.description
  }
}

// MARK: - Equatable

extension StaticArrayInt: Equatable {
  static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.elementsEqual(rhs)
  }
}

// MARK: - Hashable

extension StaticArrayInt: Hashable {
  func hash(into hasher: inout Hasher) {
    self.forEach { hasher.combine($0) }
  }
}

// MARK: - Combination

extension StaticArrayInt {
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

extension StaticArrayInt {
  func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Int>) throws -> R) rethrows -> R {
    return try self.storage.withUnsafeBufferPointer(body)
  }
}
