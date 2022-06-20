// MARK: - StaticArray

struct StaticArray<Element> {
  private var storage: Storage
}

// MARK: - StaticArray.Storage

extension StaticArray {
  private final class Storage {
    let count: Int
    let elements: UnsafeMutablePointer<Element>

    convenience init(from other: Storage) {
      self.init(unsafeUninitializedCapacity: other.count) { buffer, count in
        let otherBuffer = UnsafeMutableBufferPointer(start: other.elements, count: other.count)

        (_, count) = buffer.initialize(from: otherBuffer)
      }
    }

    init(unsafeUninitializedCapacity: Int,
         initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Element>,
                                        _ initializedCount: inout Int) throws -> Void) rethrows
    {
      if unsafeUninitializedCapacity < 0 {
        fatalError("Can't construct StaticArray with count < 0")
      }

      self.elements = UnsafeMutablePointer<Element>.allocate(capacity: unsafeUninitializedCapacity)

      var count = unsafeUninitializedCapacity
      var buffer = UnsafeMutableBufferPointer(start: self.elements, count: count)

      try initializer(&buffer, &count)

      self.count = count
    }

    func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Element>) throws -> R) rethrows -> R {
      return try body(UnsafeBufferPointer(start: self.elements, count: self.count))
    }

    deinit {
      self.elements.deinitialize(count: self.count)
      self.elements.deallocate()
    }
  }
}

// MARK: - Initialization

extension StaticArray {
  init() {
    self.init(unsafeUninitializedCapacity: 0) { _, _ in }
  }

  init(repeating: Element, count: Int) {
    self.init(unsafeUninitializedCapacity: count) { buffer, _ in
      buffer.initialize(repeating: repeating)
    }
  }

  init(
    unsafeUninitializedCapacity: Int,
    initializingWith initializer: (_ buffer: inout UnsafeMutableBufferPointer<Element>,
                                   _ initializedCount: inout Int) throws -> Void
  ) rethrows {
    self.storage = try Storage(
      unsafeUninitializedCapacity: unsafeUninitializedCapacity,
      initializingWith: initializer
    )
  }
}

// MARK: - ExpressibleByArrayLiteral

extension StaticArray: ExpressibleByArrayLiteral {
  init(arrayLiteral: Element...) {
    self.init(unsafeUninitializedCapacity: arrayLiteral.count) { buffer, count in
      (_, count) = buffer.initialize(from: arrayLiteral)
    }
  }
}

// MARK: - Collection
// And Sequence

extension StaticArray: Collection {
  var startIndex: Int {
    return 0
  }

  var endIndex: Int {
    return self.storage.count
  }

  func index(after i: Int) -> Int {
    return i + 1
  }

  subscript(_ index: Int) -> Element {
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

extension StaticArray: BidirectionalCollection {
  func index(before i: Int) -> Int {
    return i - 1
  }
}

// MARK: - RandomAccessCollection

// Because Self.Index == Int: Stridable, there is nothing to implement
extension StaticArray: RandomAccessCollection {}

// MARK: - MutableCollection

// Because subscript { set } is defined above, there is nothing to implement
extension StaticArray: MutableCollection {}

// MARK: - CustomStringConvertible

extension StaticArray: CustomStringConvertible {
  var description: String {
    return "[" + self.map { String(reflecting: $0) }.joined(separator: ", ") + "]"
  }
}

// MARK: - CustomDebugStringConvertible

extension StaticArray: CustomDebugStringConvertible {
  var debugDescription: String {
    return self.description
  }
}

// MARK: - Equatable

extension StaticArray: Equatable where Element: Equatable {
  static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.elementsEqual(rhs)
  }
}

// MARK: - Hashable

extension StaticArray: Hashable where Element: Hashable {
  func hash(into hasher: inout Hasher) {
    self.forEach { hasher.combine($0) }
  }
}

// MARK: - Combination

extension StaticArray {
  static func + (lhs: Self, rhs: Self) -> Self {
    return Self(unsafeUninitializedCapacity: lhs.count + rhs.count) { buffer, _ in
      for index in 0..<lhs.count {
        let element = lhs[index]
        buffer[index] = element
      }

      for index in 0..<rhs.count {
        let element = rhs[index]
        buffer[lhs.count + index] = element
      }
    }
  }
}

// MARK: - withUnsafeBufferPointer
// And for verifying value type with copy-on-write semantics

extension StaticArray {
  func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Element>) throws -> R) rethrows -> R {
    return try self.storage.withUnsafeBufferPointer(body)
  }
}
