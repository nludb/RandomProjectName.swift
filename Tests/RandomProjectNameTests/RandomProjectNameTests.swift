/**
 *  RandomProjectName
 *  Copyright (c) NLUDB, Inc. 2021
 *  Licensed under the MIT license. See LICENSE file.
 */
import XCTest
@testable import RandomProjectName

final class RandomProjectNameTests: XCTestCase {
  func testNoun() throws {
    let noun = String.randomNoun()
    XCTAssertNotNil(noun)
    XCTAssertTrue(_RANDOM_NOUNS.contains(noun))
  }

  func testAdjective() throws {
    let adj = String.randomAdjective()
    XCTAssertNotNil(adj)
    XCTAssertTrue(_RANDOM_ADJECTIVES.contains(adj))
  }

  func testProjectName() throws {
    // Default
    let name1 = String.randomProjectName()
    XCTAssertNotNil(name1)
    let comp1 = name1.components(separatedBy: "-")
    XCTAssertEqual(comp1.count, 2)
    XCTAssertTrue(_RANDOM_ADJECTIVES.contains(comp1[0]))
    XCTAssertTrue(_RANDOM_NOUNS.contains(comp1[1]))

    // With suffix
    let suffixLength = 4
    let name2 = String.randomProjectName(suffixLength)
    XCTAssertNotNil(name2)
    let comp2 = name2.components(separatedBy: "-")
    XCTAssertEqual(comp2.count, 3)
    XCTAssertTrue(_RANDOM_ADJECTIVES.contains(comp2[0]))
    XCTAssertTrue(_RANDOM_NOUNS.contains(comp2[1]))
    XCTAssertEqual(comp2[2].count, suffixLength)

    // With different delimiter
    let del = "_"
    let name3 = String.randomProjectName(suffixLength, separatedBy: del)
    XCTAssertNotNil(name3)
    let comp3 = name3.components(separatedBy: del)
    XCTAssertEqual(comp3.count, 3)
    XCTAssertTrue(_RANDOM_ADJECTIVES.contains(comp3[0]))
    XCTAssertTrue(_RANDOM_NOUNS.contains(comp3[1]))
    XCTAssertEqual(comp3[2].count, suffixLength)
  }
}
