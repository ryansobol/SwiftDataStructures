@testable import SwiftDataStructures
import XCTest

final class DynamicArrayTests: XCTestCase {}

// MARK: - Initialization

extension DynamicArrayTests {
  func testInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitUsingString() {
    let dynamicArray = DynamicArray<String>()
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)
    let actualCount = dynamicArray.count
    let expectedCount = 3

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)
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

extension DynamicArrayTests {
  func testInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []
    let actualCount = dynamicArray.count
    let expectedCount = 0

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 0

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]
    let actualCount = dynamicArray.count
    let expectedCount = 3

    XCTAssertEqual(expectedCount, actualCount)

    let actualCapacity = dynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testInitByNonEmptyArrayLiteralString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]
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

extension DynamicArrayTests {
  // MARK: - startIndex

  func testStartIndexFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]
    let actual = dynamicArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  // MARK: - endIndex

  func testEndIndexFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []
    let actual = dynamicArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]
    let actual = dynamicArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  // MARK: - index(after:)

  func testIndexAfterFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]

    for index in 0..<3 {
      let actual = dynamicArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  // MARK: - subscript { get }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)

    for index in 0..<dynamicArray.count {
      let actual = dynamicArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)

    for index in 0..<dynamicArray.count {
      let actual = dynamicArray[index]
      let expected = ""

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]

    for index in 0..<dynamicArray.count {
      let actual = dynamicArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]

    for (index, element) in ["a", "b", "c"].enumerated() {
      let actual = dynamicArray[index]
      let expected = element

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - BidirectionalCollection

extension DynamicArrayTests {
  // MARK: - index(before:)

  func testIndexBeforeFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]

    for index in 0..<3 {
      let actual = dynamicArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }
}

// MARK: - MutableCollection

extension DynamicArrayTests {
  // MARK: - subscript { set }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCountUsingInt() {
    var dynamicArray = DynamicArray(repeating: 0, count: 3)

    for index in 0..<dynamicArray.count {
      dynamicArray[index] = index + 1

      let actual = dynamicArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCountUsingString() {
    var dynamicArray = DynamicArray(repeating: "", count: 3)

    for (index, element) in ["a", "c", "c"].enumerated() {
      dynamicArray[index] = element

      let actual = dynamicArray[index]
      let expected = element

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteralUsingInt() {
    var dynamicArray: DynamicArray = [1, 2, 3]

    for index in 0..<dynamicArray.count {
      dynamicArray[index] = 0

      let actual = dynamicArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteralUsingString() {
    var dynamicArray: DynamicArray = ["a", "b", "c"]

    for index in 0..<dynamicArray.count {
      dynamicArray[index] = ""

      let actual = dynamicArray[index]
      let expected = ""

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - CustomStringConvertible

extension DynamicArrayTests {
  func testDescriptionFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)
    let actual = String(describing: dynamicArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)
    let actual = String(describing: dynamicArray)
    let expected = #"["", "", ""]"#

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []
    let actual = String(describing: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]
    let actual = String(describing: dynamicArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]
    let actual = String(describing: dynamicArray)
    let expected = #"["a", "b", "c"]"#

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - CustomDebugStringConvertible

extension DynamicArrayTests {
  func testDebugDescriptionFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)
    let actual = String(reflecting: dynamicArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)
    let actual = String(reflecting: dynamicArray)
    let expected = #"["", "", ""]"#

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []
    let actual = String(reflecting: dynamicArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]
    let actual = String(reflecting: dynamicArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]
    let actual = String(reflecting: dynamicArray)
    let expected = #"["a", "b", "c"]"#

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Equatable

extension DynamicArrayTests {
  func testEqualityFromInitAndInitRepeatingWithZeroCountUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs = DynamicArray(repeating: 0, count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitRepeatingWithZeroCountUsingString() {
    let lhs = DynamicArray<String>()
    let rhs = DynamicArray(repeating: "", count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs: DynamicArray<Int> = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteralUsingString() {
    let lhs = DynamicArray<String>()
    let rhs: DynamicArray<String> = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs: DynamicArray = [0, 0, 0]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingString() {
    let lhs = DynamicArray(repeating: "", count: 3)
    let rhs: DynamicArray = ["", "", ""]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs: DynamicArray = [1, 2, 3]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingString() {
    let lhs: DynamicArray = ["a", "b", "c"]
    let rhs: DynamicArray = ["a", "b", "c"]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }
}

// MARK: - Hashable

extension DynamicArrayTests {
  func testHasherFromInitAndInitRepeatingWithZeroCountUsingInt() {
    let actual = DynamicArray<Int>()
    let expected = DynamicArray(repeating: 0, count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitRepeatingWithZeroCountUsingString() {
    let actual = DynamicArray<String>()
    let expected = DynamicArray(repeating: "", count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteralUsingInt() {
    let actual = DynamicArray<Int>()
    let expected: DynamicArray<Int> = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteralUsingString() {
    let actual = DynamicArray<String>()
    let expected: DynamicArray<String> = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingInt() {
    let actual = DynamicArray(repeating: 0, count: 3)
    let expected: DynamicArray = [0, 0, 0]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingString() {
    let actual = DynamicArray(repeating: 0, count: 3)
    let expected: DynamicArray = [0, 0, 0]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInt() {
    let actual: DynamicArray = [1, 2, 3]
    let expected: DynamicArray = [1, 2, 3]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingString() {
    let actual: DynamicArray = ["a", "b", "c"]
    let expected: DynamicArray = ["a", "b", "c"]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }
}

// MARK: - Combination

extension DynamicArrayTests {
  func testAdditionFromInitAndInitUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs = DynamicArray<Int>()
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithZeroCountUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs = DynamicArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitRepeatingWithPositiveCountUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs = DynamicArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs: DynamicArray<Int> = []
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray<Int>()
    let rhs: DynamicArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 0)
    let rhs = DynamicArray<Int>()
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithZeroCountUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 0)
    let rhs = DynamicArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithPositiveCountUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 0)
    let rhs = DynamicArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 0)
    let rhs: DynamicArray<Int> = []
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 0)
    let rhs: DynamicArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs = DynamicArray<Int>()
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithZeroCountUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs = DynamicArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithPositiveCountUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs = DynamicArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs: DynamicArray<Int> = []
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs = DynamicArray(repeating: 0, count: 3)
    let rhs: DynamicArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitUsingInt() {
    let lhs: DynamicArray<Int> = []
    let rhs = DynamicArray<Int>()
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithZeroCountUsingInt() {
    let lhs: DynamicArray<Int> = []
    let rhs = DynamicArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithPositiveCountUsingInt() {
    let lhs: DynamicArray<Int> = []
    let rhs = DynamicArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByEmptyArrayLiteralUsingInt() {
    let lhs: DynamicArray<Int> = []
    let rhs: DynamicArray<Int> = []
    let actual = lhs + rhs
    let expected: DynamicArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs: DynamicArray<Int> = []
    let rhs: DynamicArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs = DynamicArray<Int>()
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithZeroCountUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs = DynamicArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithPositiveCountUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs = DynamicArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByEmptyArrayLiteralUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs: DynamicArray<Int> = []
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInt() {
    let lhs: DynamicArray = [1, 2, 3]
    let rhs: DynamicArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: DynamicArray = [1, 2, 3, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - withUnsafeBufferPointer

extension DynamicArrayTests {
  func testWithUnsafeBufferPointerFromInitUsingInt() {
    let dynamicArray = DynamicArray<Int>()

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitUsingString() {
    let dynamicArray = DynamicArray<String>()

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithZeroCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 0)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithZeroCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 0)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithPositiveCountUsingInt() {
    let dynamicArray = DynamicArray(repeating: 0, count: 3)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithPositiveCountUsingString() {
    let dynamicArray = DynamicArray(repeating: "", count: 3)

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray<Int> = []

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray<String> = []

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByNonEmptyArrayLiteralUsingInt() {
    let dynamicArray: DynamicArray = [1, 2, 3]

    dynamicArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = dynamicArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByNonEmptyArrayLiteralUsingString() {
    let dynamicArray: DynamicArray = ["a", "b", "c"]

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

extension DynamicArrayTests {
  func testWithUnsafeBufferPointerAnotherNotCopiedOnAssigned() {
    let dynamicArrayOriginal: DynamicArray = [1, 2, 3]
    let dynamicArrayAnother = dynamicArrayOriginal

    dynamicArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      dynamicArrayAnother.withUnsafeBufferPointer { bufferAnother in
        XCTAssertEqual(bufferOriginal.baseAddress, bufferAnother.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerOriginalNotCopiedOnModifiedWrite() {
    let dynamicArrayOriginal: DynamicArray = [1, 2, 3]
    let baseAddressOriginalBefore = dynamicArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    let baseAddressOriginalAfter = dynamicArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressOriginalBefore, baseAddressOriginalAfter)
  }

  func testWithUnsafeBufferPointerModifiedCopiedOnModifiedWrite() {
    let dynamicArrayOriginal: DynamicArray = [1, 2, 3]

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    dynamicArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      dynamicArrayModified.withUnsafeBufferPointer { bufferModified in
        XCTAssertNotEqual(bufferOriginal.baseAddress, bufferModified.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerModifiedNotCopiedOnModifiedSecondWrite() {
    let dynamicArrayOriginal: DynamicArray = [1, 2, 3]

    var dynamicArrayModified = dynamicArrayOriginal

    dynamicArrayModified[0] = 42

    let baseAddressModifiedBefore = dynamicArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    dynamicArrayModified[0] = 1

    let baseAddressModifiedAfter = dynamicArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressModifiedBefore, baseAddressModifiedAfter)
  }
}

// MARK: - RangeReplaceableCollection

extension DynamicArrayTests {
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
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [])

    let expectedDynamicArray: DynamicArray = [1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [0])

    let expectedDynamicArray: DynamicArray = [0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-2, -1, 0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementFrontSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<0, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-3, -2, -1, 0, 1, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [])

    let expectedDynamicArray: DynamicArray = [2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [0])

    let expectedDynamicArray: DynamicArray = [0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-2, -1, 0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementFrontSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<1, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-3, -2, -1, 0, 2, 3]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Middle

  func testReplaceZeroElementMiddleSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [])

    let expectedDynamicArray: DynamicArray = [10, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11])

    let expectedDynamicArray: DynamicArray = [10, 11, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11, 12, 13])

    let expectedDynamicArray: DynamicArray = [10, 11, 12, 13, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementMiddleSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<1, with: [11, 12, 13, 14])

    let expectedDynamicArray: DynamicArray = [10, 11, 12, 13, 14, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [])

    let expectedDynamicArray: DynamicArray = [10, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11])

    let expectedDynamicArray: DynamicArray = [10, 11, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11, 12, 13])

    let expectedDynamicArray: DynamicArray = [10, 11, 12, 13, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementMiddleSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(1..<2, with: [11, 12, 13, 14])

    let expectedDynamicArray: DynamicArray = [10, 11, 12, 13, 14, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Back

  func testReplaceZeroElementBackSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [])

    let expectedDynamicArray: DynamicArray = [10, 20, 30]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31])

    let expectedDynamicArray: DynamicArray = [10, 20, 30, 31]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31, 32, 33])

    let expectedDynamicArray: DynamicArray = [10, 20, 30, 31, 32, 33]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceZeroElementBackSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(3..<3, with: [31, 32, 33, 34])

    let expectedDynamicArray: DynamicArray = [10, 20, 30, 31, 32, 33, 34]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 8

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [])

    let expectedDynamicArray: DynamicArray = [10, 20]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31])

    let expectedDynamicArray: DynamicArray = [10, 20, 31]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31, 32, 33])

    let expectedDynamicArray: DynamicArray = [10, 20, 31, 32, 33]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceOneElementBackSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [10, 20, 30]

    actualDynamicArray.replaceSubrange(2..<3, with: [31, 32, 33, 34])

    let expectedDynamicArray: DynamicArray = [10, 20, 31, 32, 33, 34]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  // MARK: - Entire

  func testReplaceEntireSubRangeWithZeroElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [])

    let expectedDynamicArray: DynamicArray<Int> = []

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithOneElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [0])

    let expectedDynamicArray: DynamicArray = [0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithThreeElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [-2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-2, -1, 0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 3

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }

  func testReplaceEntireSubRangeWithFourElementCollection() {
    var actualDynamicArray: DynamicArray = [1, 2, 3]

    actualDynamicArray.replaceSubrange(0..<3, with: [-3, -2, -1, 0])

    let expectedDynamicArray: DynamicArray = [-3, -2, -1, 0]

    XCTAssertEqual(expectedDynamicArray, actualDynamicArray)

    let actualCapacity = actualDynamicArray.capacity
    let expectedCapacity = 6

    XCTAssertEqual(expectedCapacity, actualCapacity)
  }
}
