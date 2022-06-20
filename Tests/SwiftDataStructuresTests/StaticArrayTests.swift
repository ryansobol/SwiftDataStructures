@testable import SwiftDataStructures
import XCTest

final class StaticArrayTests: XCTestCase {}

// MARK: - Initialization

extension StaticArrayTests {
  func testInitUsingInt() {
    let staticArray = StaticArray<Int>()
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitUsingString() {
    let staticArray = StaticArray<String>()
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testInitRepeatingWithNegativeCount() throws {
    throw XCTSkip("Initializing with a negative count triggers a fatal error.")
  }
}

// MARK: - ExpressibleByArrayLiteral

extension StaticArrayTests {
  func testInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []
    let actual = staticArray.count
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]
    let actual = staticArray.count
    let expected = 3

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Collection
// And Sequence

extension StaticArrayTests {
  // MARK: - startIndex

  func testStartIndexFromInitUsingInt() {
    let staticArray = StaticArray<Int>()
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitUsingString() {
    let staticArray = StaticArray<String>()
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testStartIndexFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]
    let actual = staticArray.startIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  // MARK: - endIndex

  func testEndIndexFromInitUsingInt() {
    let staticArray = StaticArray<Int>()
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitUsingString() {
    let staticArray = StaticArray<String>()
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []
    let actual = staticArray.endIndex
    let expected = 0

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  func testEndIndexFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]
    let actual = staticArray.endIndex
    let expected = 3

    XCTAssertEqual(expected, actual)
  }

  // MARK: - index(after:)

  func testIndexAfterFromInitUsingInt() {
    let staticArray = StaticArray<Int>()

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitUsingString() {
    let staticArray = StaticArray<String>()

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexAfterFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]

    for index in 0..<3 {
      let actual = staticArray.index(after: index)
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  // MARK: - subscript { get }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)

    for index in 0..<staticArray.count {
      let actual = staticArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptGetFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)

    for index in 0..<staticArray.count {
      let actual = staticArray[index]
      let expected = ""

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]

    for index in 0..<staticArray.count {
      let actual = staticArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptGetFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]

    for (index, element) in ["a", "b", "c"].enumerated() {
      let actual = staticArray[index]
      let expected = element

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptGetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - BidirectionalCollection

extension StaticArrayTests {
  // MARK: - index(before:)

  func testIndexBeforeFromInitUsingInt() {
    let staticArray = StaticArray<Int>()

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitUsingString() {
    let staticArray = StaticArray<String>()

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testIndexBeforeFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]

    for index in 0..<3 {
      let actual = staticArray.index(before: index)
      let expected = index - 1

      XCTAssertEqual(expected, actual)
    }
  }
}

// MARK: - MutableCollection

extension StaticArrayTests {
  // MARK: - subscript { set }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCountUsingInt() {
    var staticArray = StaticArray(repeating: 0, count: 3)

    for index in 0..<staticArray.count {
      staticArray[index] = index + 1

      let actual = staticArray[index]
      let expected = index + 1

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptSetFromInitRepeatingWithPositiveCountUsingString() {
    var staticArray = StaticArray(repeating: "", count: 3)

    for (index, element) in ["a", "c", "c"].enumerated() {
      staticArray[index] = element

      let actual = staticArray[index]
      let expected = element

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitRepeatingWithPositiveCount() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteralUsingInt() {
    var staticArray: StaticArray = [1, 2, 3]

    for index in 0..<staticArray.count {
      staticArray[index] = 0

      let actual = staticArray[index]
      let expected = 0

      XCTAssertEqual(expected, actual)
    }
  }

  func testInBoundsSubscriptSetFromInitByNonEmptyArrayLiteralUsingString() {
    var staticArray: StaticArray = ["a", "b", "c"]

    for index in 0..<staticArray.count {
      staticArray[index] = ""

      let actual = staticArray[index]
      let expected = ""

      XCTAssertEqual(expected, actual)
    }
  }

  func testOutOfBoundsSubscriptSetFromInitByNonEmptyArrayLiteral() throws {
    throw XCTSkip("Getting an element with an out-of-boud index triggers a fatal error.")
  }
}

// MARK: - CustomStringConvertible

extension StaticArrayTests {
  func testDescriptionFromInitUsingInt() {
    let staticArray = StaticArray<Int>()
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitUsingString() {
    let staticArray = StaticArray<String>()
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)
    let actual = String(describing: staticArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)
    let actual = String(describing: staticArray)
    let expected = #"["", "", ""]"#

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []
    let actual = String(describing: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]
    let actual = String(describing: staticArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }

  func testDescriptionFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]
    let actual = String(describing: staticArray)
    let expected = #"["a", "b", "c"]"#

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - CustomDebugStringConvertible

extension StaticArrayTests {
  func testDebugDescriptionFromInitUsingInt() {
    let staticArray = StaticArray<Int>()
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitUsingString() {
    let staticArray = StaticArray<String>()
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 0)
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithZeroCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 0)
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCountUsingInt() {
    let staticArray = StaticArray(repeating: 0, count: 3)
    let actual = String(reflecting: staticArray)
    let expected = "[0, 0, 0]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitRepeatingWithPositiveCountUsingString() {
    let staticArray = StaticArray(repeating: "", count: 3)
    let actual = String(reflecting: staticArray)
    let expected = #"["", "", ""]"#

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray<Int> = []
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray<String> = []
    let actual = String(reflecting: staticArray)
    let expected = "[]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteralUsingInt() {
    let staticArray: StaticArray = [1, 2, 3]
    let actual = String(reflecting: staticArray)
    let expected = "[1, 2, 3]"

    XCTAssertEqual(expected, actual)
  }

  func testDebugDescriptionFromInitByNonEmptyArrayLiteralUsingString() {
    let staticArray: StaticArray = ["a", "b", "c"]
    let actual = String(reflecting: staticArray)
    let expected = #"["a", "b", "c"]"#

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - Equatable

extension StaticArrayTests {
  func testEqualityFromInitAndInitRepeatingWithZeroCountUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs = StaticArray(repeating: 0, count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitRepeatingWithZeroCountUsingStrings() {
    let lhs = StaticArray<String>()
    let rhs = StaticArray(repeating: "", count: 0)

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs: StaticArray<Int> = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitAndInitByEmptyArrayLiteralUsingStrings() {
    let lhs = StaticArray<String>()
    let rhs: StaticArray<String> = []

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs: StaticArray = [0, 0, 0]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingStrings() {
    let lhs = StaticArray(repeating: "", count: 3)
    let rhs: StaticArray = ["", "", ""]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInts() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs: StaticArray = [1, 2, 3]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }

  func testEqualityFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingStrings() {
    let lhs: StaticArray = ["a", "b", "c"]
    let rhs: StaticArray = ["a", "b", "c"]

    XCTAssertTrue(lhs == rhs)
    XCTAssertTrue(rhs == lhs)
  }
}

// MARK: - Hashable

extension StaticArrayTests {
  func testHasherFromInitAndInitRepeatingWithZeroCountUsingInts() {
    let actual = StaticArray<Int>()
    let expected = StaticArray(repeating: 0, count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitRepeatingWithZeroCountUsingStrings() {
    let actual = StaticArray<String>()
    let expected = StaticArray(repeating: "", count: 0)
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteralUsingInts() {
    let actual = StaticArray<Int>()
    let expected: StaticArray<Int> = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitAndInitByEmptyArrayLiteralUsingStrings() {
    let actual = StaticArray<String>()
    let expected: StaticArray<String> = []
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingInts() {
    let actual = StaticArray(repeating: 0, count: 3)
    let expected: StaticArray = [0, 0, 0]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteralUsingStrings() {
    let actual = StaticArray(repeating: "", count: 3)
    let expected: StaticArray = ["", "", ""]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }

  func testHasherFromInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteralUsingInts() {
    let actual: StaticArray = ["a", "b", "c"]
    let expected: StaticArray = ["a", "b", "c"]
    let set: Set = [actual]

    XCTAssertTrue(set.contains(expected))
  }
}

// MARK: - Combination

extension StaticArrayTests {
  func testAdditionFromInitAndInitUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs = StaticArray<Int>()
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitAndInitUsingStrings() {
//    let lhs = StaticArray<String>()
//    let rhs = StaticArray<String>()
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitAndInitRepeatingWithZeroCountUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs = StaticArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitAndInitRepeatingWithZeroCountUsingStrings() {
//    let lhs = StaticArray<String>()
//    let rhs = StaticArray(repeating: "", count: 0)
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitAndInitRepeatingWithPositiveCountUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs = StaticArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitAndInitRepeatingWithPositiveCountUsingStrings() {
//    let lhs = StaticArray<String>()
//    let rhs = StaticArray(repeating: "", count: 3)
//    let actual = lhs + rhs
//    let expected: StaticArray = ["", "", ""]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitAndInitByEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs: StaticArray<Int> = []
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitAndInitByEmptyArrayLiteralUsingStrings() {
//    let lhs = StaticArray<String>()
//    let rhs: StaticArray<String> = []
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitAndInitByNonEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray<Int>()
    let rhs: StaticArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitAndInitByNonEmptyArrayLiteralUsingStrings() {
//    let lhs = StaticArray<String>()
//    let rhs: StaticArray = ["a", "b", "c"]
//    let actual = lhs + rhs
//    let expected: StaticArray = ["a", "b", "c"]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 0)
    let rhs = StaticArray<Int>()
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithZeroCountAndInitUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 0)
//    let rhs = StaticArray<String>()
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithZeroCountUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 0)
    let rhs = StaticArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithZeroCountUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 0)
//    let rhs = StaticArray(repeating: "", count: 0)
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithPositiveCountUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 0)
    let rhs = StaticArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithZeroCountAndInitRepeatingWithPositiveCountUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 0)
//    let rhs = StaticArray(repeating: "", count: 3)
//    let actual = lhs + rhs
//    let expected: StaticArray = ["", "", ""]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 0)
    let rhs: StaticArray<Int> = []
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithZeroCountAndInitByEmptyArrayLiteralUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 0)
//    let rhs: StaticArray<String> = []
//    let actual = lhs + rhs
//    let expected: StaticArray<String> = []
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithZeroCountAndInitByNonEmptyArrayLiteralUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 0)
    let rhs: StaticArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithZeroCountAndInitByNonEmptyArrayLiteralUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 0)
//    let rhs: StaticArray = ["a", "b", "c"]
//    let actual = lhs + rhs
//    let expected: StaticArray = ["a", "b", "c"]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs = StaticArray<Int>()
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithPositiveCountAndInitUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 3)
//    let rhs = StaticArray<String>()
//    let actual = lhs + rhs
//    let expected: StaticArray = ["", "", ""]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithZeroCountUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs = StaticArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithZeroCountUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 3)
//    let rhs = StaticArray(repeating: "", count: 0)
//    let actual = lhs + rhs
//    let expected: StaticArray = ["", "", ""]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithPositiveCountUsingInts() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs = StaticArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

//  func testAdditionFromInitRepeatingWithPositiveCountAndInitRepeatingWithPositiveCountUsingStrings() {
//    let lhs = StaticArray(repeating: "", count: 3)
//    let rhs = StaticArray(repeating: "", count: 3)
//    let actual = lhs + rhs
//    let expected: StaticArray = ["", "", "", "", "", ""]
//
//    XCTAssertEqual(expected, actual)
//  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByEmptyArrayLiteral() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs: StaticArray<Int> = []
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromInitRepeatingWithPositiveCountAndInitByNonEmptyArrayLiteral() {
    let lhs = StaticArray(repeating: 0, count: 3)
    let rhs: StaticArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInit() {
    let lhs: StaticArray<Int> = []
    let rhs = StaticArray<Int>()
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: StaticArray<Int> = []
    let rhs = StaticArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: StaticArray<Int> = []
    let rhs = StaticArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArray = [0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: StaticArray<Int> = []
    let rhs: StaticArray<Int> = []
    let actual = lhs + rhs
    let expected: StaticArray<Int> = []

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: StaticArray<Int> = []
    let rhs: StaticArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInit() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs = StaticArray<Int>()
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithZeroCount() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs = StaticArray(repeating: 0, count: 0)
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitRepeatingWithPositiveCount() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs = StaticArray(repeating: 0, count: 3)
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3, 0, 0, 0]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByEmptyArrayLiteral() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs: StaticArray<Int> = []
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3]

    XCTAssertEqual(expected, actual)
  }

  func testAdditionFromdInitByNonEmptyArrayLiteralAndInitByNonEmptyArrayLiteral() {
    let lhs: StaticArray = [1, 2, 3]
    let rhs: StaticArray = [1, 2, 3]
    let actual = lhs + rhs
    let expected: StaticArray = [1, 2, 3, 1, 2, 3]

    XCTAssertEqual(expected, actual)
  }
}

// MARK: - withUnsafeBufferPointer

extension StaticArrayTests {
  func testWithUnsafeBufferPointerFromInit() {
    let staticArray = StaticArray<Int>()

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithZeroCount() {
    let staticArray = StaticArray(repeating: 0, count: 0)

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitRepeatingWithPositiveCount() {
    let staticArray = StaticArray(repeating: 0, count: 3)

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByEmptyArrayLiteral() {
    let staticArray: StaticArray<Int> = []

    staticArray.withUnsafeBufferPointer { buffer in
      for (index, element) in buffer.enumerated() {
        let actual = element
        let expected = staticArray[index]

        XCTAssertEqual(expected, actual)
      }
    }
  }

  func testWithUnsafeBufferPointerFromInitByNonEmptyArrayLiteral() {
    let staticArray: StaticArray = [1, 2, 3]

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

extension StaticArrayTests {
  func testWithUnsafeBufferPointerAnotherNotCopiedOnAssigned() {
    let staticArrayOriginal: StaticArray = [1, 2, 3]
    let staticArrayAnother = staticArrayOriginal

    staticArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      staticArrayAnother.withUnsafeBufferPointer { bufferAnother in
        XCTAssertEqual(bufferOriginal.baseAddress, bufferAnother.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerOriginalNotCopiedOnModifiedWrite() {
    let staticArrayOriginal: StaticArray = [1, 2, 3]
    let baseAddressOriginalBefore = staticArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    let baseAddressOriginalAfter = staticArrayOriginal.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressOriginalBefore, baseAddressOriginalAfter)
  }

  func testWithUnsafeBufferPointerModifiedCopiedOnModifiedWrite() {
    let staticArrayOriginal: StaticArray = [1, 2, 3]

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    staticArrayOriginal.withUnsafeBufferPointer { bufferOriginal in
      staticArrayModified.withUnsafeBufferPointer { bufferModified in
        XCTAssertNotEqual(bufferOriginal.baseAddress, bufferModified.baseAddress)
      }
    }
  }

  func testWithUnsafeBufferPointerModifiedNotCopiedOnModifiedSecondWrite() {
    let staticArrayOriginal: StaticArray = [1, 2, 3]

    var staticArrayModified = staticArrayOriginal

    staticArrayModified[0] = 42

    let baseAddressModifiedBefore = staticArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    staticArrayModified[0] = 1

    let baseAddressModifiedAfter = staticArrayModified.withUnsafeBufferPointer { $0.baseAddress }

    XCTAssertEqual(baseAddressModifiedBefore, baseAddressModifiedAfter)
  }
}
