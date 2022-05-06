@testable import SwiftDataStructures
import XCTest

final class StaticArrayIntTests: XCTestCase {}

// MARK: - Initialization

extension StaticArrayIntTests {
  func testInit() {
    let staticArray = StaticArrayInt()
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithNegativeCount() throws {
    throw XCTSkip("Initializing with a negative count triggers a fatal error.")
  }
}

// MARK: - ExpressibleByArrayLiteral

extension StaticArrayIntTests {
  func testInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Collection

extension StaticArrayIntTests {
  // MARK: - startIndex

  func testStartIndexFromInit() {
    let staticArray = StaticArrayInt()
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  // MARK: - endIndex

  func testEndIndexFromInit() {
    let staticArray = StaticArrayInt()
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  // MARK: - index(after:)

  func testIndexAfterFromInit() {
    let staticArray = StaticArrayInt()

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  // MARK: - subscript { get }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)

    for index in 0..<staticArray.count {
      let actual = staticArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]

    for index in 0..<staticArray.count {
      let actual = staticArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - BidirectionalCollection

extension StaticArrayIntTests {
  // MARK: - index(before:)

  func testIndexBeforeFromInit() {
    let staticArray = StaticArrayInt()

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }
}

// MARK: - MutableCollection

extension StaticArrayIntTests {
  // MARK: - subscript { set }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCount() {
    var staticArray = StaticArrayInt(repeating: 0, count: 3)

    for index in 0..<staticArray.count {
      staticArray[index] = index + 1

      let actual = staticArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() {
    var staticArray: StaticArrayInt = [1, 2, 3]

    for index in 0..<staticArray.count {
      staticArray[index] = 0

      let actual = staticArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - CustomStringConvertible

extension StaticArrayIntTests {
  func testDescriptionFromInt() {
    let staticArray = StaticArrayInt()
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)
    let actual = String(describing: staticArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]
    let actual = String(describing: staticArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - CustomDebugStringConvertible

extension StaticArrayIntTests {
  func testDebugDescriptionFromInt() {
    let staticArray = StaticArrayInt()
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)
    let actual = String(reflecting: staticArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]
    let actual = String(reflecting: staticArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Equatable

extension StaticArrayIntTests {
  func testEqualityFromInitAndInitRepeatingWithZeroCount() {
    let lhs = StaticArrayInt()
    let rhs = StaticArrayInt(repeating: 0, count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteral() {
    let lhs = StaticArrayInt()
    let rhs: StaticArrayInt = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs: StaticArrayInt = [0, 0, 0]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs: StaticArrayInt = [1, 2, 3]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }
}

// MARK: - Hashable

extension StaticArrayIntTests {
  func testHasherFromInitAndInitRepeatingWithZeroCount() {
    let actual = StaticArrayInt()
    let expected = StaticArrayInt(repeating: 0, count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteral() {
    let actual = StaticArrayInt()
    let expected: StaticArrayInt = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let actual = StaticArrayInt(repeating: 0, count: 3)
    let expected: StaticArrayInt = [0, 0, 0]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let actual: StaticArrayInt = [1, 2, 3]
    let expected: StaticArrayInt = [1, 2, 3]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }
}

// MARK: - Combination

extension StaticArrayIntTests {
  func testAdditionFromInitAndInit() {
    let lhs = StaticArrayInt()
    let rhs = StaticArrayInt()
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithZeroCount() {
    let lhs = StaticArrayInt()
    let rhs = StaticArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithPositiveCount() {
    let lhs = StaticArrayInt()
    let rhs = StaticArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByEmptyArrayLiteral() {
    let lhs = StaticArrayInt()
    let rhs: StaticArrayInt = []
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByNonEmptyArrayLiteral() {
    let lhs = StaticArrayInt()
    let rhs: StaticArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInit() {
    let lhs = StaticArrayInt(repeating: 0, count: 0)
    let rhs = StaticArrayInt()
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithZeroCount() {
    let lhs = StaticArrayInt(repeating: 0, count: 0)
    let rhs = StaticArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithPositiveCount() {
    let lhs = StaticArrayInt(repeating: 0, count: 0)
    let rhs = StaticArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByEmptyArrayLiteral() {
    let lhs = StaticArrayInt(repeating: 0, count: 0)
    let rhs: StaticArrayInt = []
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByNonEmptyArrayLiteral() {
    let lhs = StaticArrayInt(repeating: 0, count: 0)
    let rhs: StaticArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInit() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs = StaticArrayInt()
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithZeroCount() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs = StaticArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithPositiveCount() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs = StaticArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByEmptyArrayLiteral() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs: StaticArrayInt = []
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let lhs = StaticArrayInt(repeating: 0, count: 3)
    let rhs: StaticArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInit() {
    let lhs: StaticArrayInt = []
    let rhs = StaticArrayInt()
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: StaticArrayInt = []
    let rhs = StaticArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: StaticArrayInt = []
    let rhs = StaticArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: StaticArrayInt = []
    let rhs: StaticArrayInt = []
    let actual = lhs + rhs
    let expected: StaticArrayInt = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: StaticArrayInt = []
    let rhs: StaticArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInit() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs = StaticArrayInt()
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs = StaticArrayInt(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs = StaticArrayInt(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs: StaticArrayInt = []
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: StaticArrayInt = [1, 2, 3]
    let rhs: StaticArrayInt = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArrayInt = [1, 2, 3, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - withUnsafeBufferPointer

extension StaticArrayIntTests {
  func testWithUnsafeBufferPointerFromInit() {
    let staticArray = StaticArrayInt()

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 0)

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArrayInt(repeating: 0, count: 3)

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = []

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArrayInt = [1, 2, 3]

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }
}

// MARK: - Verifying value type with copy-on-write semantics

extension StaticArrayIntTests {
  func testWithUnsafeBufferPointerAnotherNotCopiedOnAssigned() {
    let staticArrayOriginal: StaticArrayInt = [1, 2, 3]
    let staticArrayAnother = staticArrayOriginal

    staticArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      staticArrayAnother.withUnsafeBufferPointer { bufferAnother in
        XCTAssertEqual(bufferOriginal.baseAddress, bufferAnother.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerOriginalNotCopiedOnModifiedWrite() {
    let staticArrayOriginal: StaticArrayInt = [1, 2, 3]
    let baseAddressOriginalBefore = staticArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    let baseAddressOriginalAfter = staticArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressOriginalBefore, baseAddressOriginalAfter)
  }

  func testWithUnsafeBufferPointerModifiedCopiedOnModifiedWrite() {
    let staticArrayOriginal: StaticArrayInt = [1, 2, 3]

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    staticArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      staticArrayModified.withUnsafeBufferPointer { bufferModified in
        XCTAssertNotEqual(bufferOriginal.baseAddress, bufferModified.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerModifiedNotCopiedOnModifiedSecondWrite() {
    let staticArrayOriginal: StaticArrayInt = [1, 2, 3]

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    let baseAddressModifiedBefore = staticArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    staticArrayModified[0] = 1

    let baseAddressModifiedAfter = staticArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressModifiedBefore, baseAddressModifiedAfter)
  }
}
