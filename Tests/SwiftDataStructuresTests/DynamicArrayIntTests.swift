@testable import SwiftDataStructures
import XCTest

final class DynamicArrayIntTests: XCTestCase {}

// MARK: - Initialization

extension DynamicArrayIntTests {
  func testInit() {
    let dynamicArray = DynamicArrayInt()
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)
    let actualCount = dynamicArray.count
    let expectedCount = 3

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithNegativeCount() throws {
    throw XCTSkip("Initializing with a negative count triggers a fatal error.")
  }
}

// MARK: - ExpressibleByArrayLiteral

extension DynamicArrayIntTests {
  func testInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]
    let actualCount = dynamicArray.count
    let expectedCount = 3

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }
}

// MARK: - Collection
// And Sequence

extension DynamicArrayIntTests {
  // MARK: - startIndex

  func testStartIndexFromInit() {
    let dynamicArray = DynamicArrayInt()
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  // MARK: - endIndex

  func testEndIndexFromInit() {
    let dynamicArray = DynamicArrayInt()
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  // MARK: - index(after:)

  func testIndexAfterFromInit() {
    let dynamicArray = DynamicArrayInt()

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  // MARK: - subscript { get }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)

    for index in 0..<dynamicArray.count {
      let actual = dynamicArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]

    for index in 0..<dynamicArray.count {
      let actual = dynamicArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - BidirectionalCollection

extension DynamicArrayIntTests {
  // MARK: - index(before:)

  func testIndexBeforeFromInit() {
    let dynamicArray = DynamicArrayInt()

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }
}

// MARK: - MutableCollection

extension DynamicArrayIntTests {
  // MARK: - subscript { set }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCount() {
    var dynamicArray = DynamicArrayInt(repeating: 0, count: 3)

    for index in 0..<dynamicArray.count {
      dynamicArray[index] = index + 1

      let actual = dynamicArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() {
    var dynamicArray: DynamicArrayInt = [1, 2, 3]

    for index in 0..<dynamicArray.count {
      dynamicArray[index] = 0

      let actual = dynamicArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - CustomStringConvertible

extension DynamicArrayIntTests {
  func testDescriptionFromInit() {
    let dynamicArray = DynamicArrayInt()
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)
    let actual = String(describing: dynamicArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]
    let actual = String(describing: dynamicArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - CustomDebugStringConvertible

extension DynamicArrayIntTests {
  func testDebugDescriptionFromInit() {
    let dynamicArray = DynamicArrayInt()
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)
    let actual = String(reflecting: dynamicArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]
    let actual = String(reflecting: dynamicArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Equatable

extension DynamicArrayIntTests {
  func testEqualityFromInitAndInitRepeatingWithZeroCount() {
    let lhs = DynamicArrayInt()
    let rhs = DynamicArrayInt(repeating: 0, count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteral() {
    let lhs = DynamicArrayInt()
    let rhs: DynamicArrayInt = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs: DynamicArrayInt = [0, 0, 0]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs: DynamicArrayInt = [1, 2, 3]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }
}

// MARK: - Hashable

extension DynamicArrayIntTests {
  func testHasherFromInitAndInitRepeatingWithZeroCount() {
    let actual = DynamicArrayInt()
    let expected = DynamicArrayInt(repeating: 0, count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteral() {
    let actual = DynamicArrayInt()
    let expected: DynamicArrayInt = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let actual = DynamicArrayInt(repeating: 0, count: 3)
    let expected: DynamicArrayInt = [0, 0, 0]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let actual: DynamicArrayInt = [1, 2, 3]
    let expected: DynamicArrayInt = [1, 2, 3]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }
}

// MARK: - Combination

extension DynamicArrayIntTests {
  func testAdditionFromInitAndInit() {
    let lhs = DynamicArrayInt()
    let rhs = DynamicArrayInt()
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithZeroCount() {
    let lhs = DynamicArrayInt()
    let rhs = DynamicArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithPositiveCount() {
    let lhs = DynamicArrayInt()
    let rhs = DynamicArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByEmptyArrayLiteral() {
    let lhs = DynamicArrayInt()
    let rhs: DynamicArrayInt = []
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByNonEmptyArrayLiteral() {
    let lhs = DynamicArrayInt()
    let rhs: DynamicArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInit() {
    let lhs = DynamicArrayInt(repeating: 0, count: 0)
    let rhs = DynamicArrayInt()
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithZeroCount() {
    let lhs = DynamicArrayInt(repeating: 0, count: 0)
    let rhs = DynamicArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithPositiveCount() {
    let lhs = DynamicArrayInt(repeating: 0, count: 0)
    let rhs = DynamicArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByEmptyArrayLiteral() {
    let lhs = DynamicArrayInt(repeating: 0, count: 0)
    let rhs: DynamicArrayInt = []
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByNonEmptyArrayLiteral() {
    let lhs = DynamicArrayInt(repeating: 0, count: 0)
    let rhs: DynamicArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInit() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs = DynamicArrayInt()
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithZeroCount() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs = DynamicArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithPositiveCount() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs = DynamicArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByEmptyArrayLiteral() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs: DynamicArrayInt = []
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let lhs = DynamicArrayInt(repeating: 0, count: 3)
    let rhs: DynamicArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInit() {
    let lhs: DynamicArrayInt = []
    let rhs = DynamicArrayInt()
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: DynamicArrayInt = []
    let rhs = DynamicArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: DynamicArrayInt = []
    let rhs = DynamicArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: DynamicArrayInt = []
    let rhs: DynamicArrayInt = []
    let actual = lhs + rhs
    let expected: DynamicArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: DynamicArrayInt = []
    let rhs: DynamicArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInit() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs = DynamicArrayInt()
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs = DynamicArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs = DynamicArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs: DynamicArrayInt = []
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: DynamicArrayInt = [1, 2, 3]
    let rhs: DynamicArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArrayInt = [1, 2, 3, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - withUnsafeBufferPointer

extension DynamicArrayIntTests {
  func testWithUnsafeBufferPointerFromInit() {
    let dynamicArray = DynamicArrayInt()

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithZeroCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 0)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithPositiveCount() {
    let dynamicArray = DynamicArrayInt(repeating: 0, count: 3)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = []

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByNonEmptyArrayLiteral() {
    let dynamicArray: DynamicArrayInt = [1, 2, 3]

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }
}

// MARK: - Verifying value type with copy-on-write semantics

extension DynamicArrayIntTests {
  func testWithUnsafeBufferPointerAnotherNotCopiedOnAssigned() {
    let dynamicArrayOriginal: DynamicArrayInt = [1, 2, 3]
    let dynamicArrayAnother = dynamicArrayOriginal

    dynamicArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      dynamicArrayAnother.withUnsafeBufferPointer { bufferAnother in
        XCTAssertEqual(bufferOriginal.baseAddress, bufferAnother.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerOriginalNotCopiedOnModifiedWrite() {
    let dynamicArrayOriginal: DynamicArrayInt = [1, 2, 3]
    let baseAddressOriginalBefore = dynamicArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    let baseAddressOriginalAfter = dynamicArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressOriginalBefore, baseAddressOriginalAfter)
  }

  func testWithUnsafeBufferPointerModifiedCopiedOnModifiedWrite() {
    let dynamicArrayOriginal: DynamicArrayInt = [1, 2, 3]

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    dynamicArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      dynamicArrayModified.withUnsafeBufferPointer { bufferModified in
        XCTAssertNotEqual(bufferOriginal.baseAddress, bufferModified.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerModifiedNotCopiedOnModifiedSecondWrite() {
    let dynamicArrayOriginal: DynamicArrayInt = [1, 2, 3]

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    let baseAddressModifiedBefore = dynamicArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    dynamicArrayModified[0] = 1

    let baseAddressModifiedAfter = dynamicArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressModifiedBefore, baseAddressModifiedAfter)
  }
}

// MARK: - RangeReplaceableCollection

extension DynamicArrayIntTests {
  func testReplaceSubRangeThatExtendsPastTheEnd() throws {
    throw XCTSkip(
      "Replacing with a subrange that extends past the end triggers a fatal error."
    )
  }

  func testReplaceSubRangeThatStartsNegative() throws {
    throw XCTSkip("Replacing with a subrange that starts negative triggers a fatal error.")
  }

  // MARK: - Front

  func testReplaceZeroElementFrontSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [])

    let expectedDynamicArray: DynamicArrayInt = [1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [0])

    let expectedDynamicArray: DynamicArrayInt = [0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-2, -1, 0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-3, -2, -1, 0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [])

    let expectedDynamicArray: DynamicArrayInt = [2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [0])

    let expectedDynamicArray: DynamicArrayInt = [0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-2, -1, 0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-3, -2, -1, 0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Middle

  func testReplaceZeroElementMiddleSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11, 12, 13])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 12, 13, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11, 12, 13, 14])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 12, 13, 14, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [])

    let expectedDynamicArray: DynamicArrayInt = [10, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11, 12, 13])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 12, 13, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11, 12, 13, 14])

    let expectedDynamicArray: DynamicArrayInt = [10, 11, 12, 13, 14, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Back

  func testReplaceZeroElementBackSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 30, 31]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31, 32, 33])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 30, 31, 32, 33]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31, 32, 33, 34])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 30, 31, 32, 33, 34]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [])

    let expectedDynamicArray: DynamicArrayInt = [10, 20]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 31]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31, 32, 33])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 31, 32, 33]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31, 32, 33, 34])

    let expectedDynamicArray: DynamicArrayInt = [10, 20, 31, 32, 33, 34]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Entire

  func testReplaceEntireSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [])

    let expectedDynamicArray: DynamicArrayInt = []

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [0])

    let expectedDynamicArray: DynamicArrayInt = [0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-2, -1, 0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArrayInt = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArrayInt = [-3, -2, -1, 0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }
}
