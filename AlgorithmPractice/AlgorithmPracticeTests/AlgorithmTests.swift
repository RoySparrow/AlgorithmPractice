//
//  AlgorithmTests.swift
//  AlgorithmPracticeTests
//
//  Created by Roy Sparrow on 2020/4/18.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import XCTest
@testable import AlgorithmPractice

class AlgorithmTests: XCTestCase {
    
    let algorithmClass = Algorithm()
    
    override class func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasDuplicatesInIntegerArray() {
        let intArray = [1, 2, 3, 1]
        let result = algorithmClass.hasDuplicatesInIntegerArray(intArray)
        XCTAssert(result == true)
    }
    
    func testNotHasDuplicatesInIntegerArray() {
        let intArray = [1, 2, 3, 4]
        let result = algorithmClass.hasDuplicatesInIntegerArray(intArray)
        XCTAssert(result == false)
    }
    
    func testCombineTwoSortedArray() {
        let firstSortedArray = [1, 2, 3]
        let secondSortedArray = [2, 5, 6]
        let result = algorithmClass.combineTwoSortedArray(first: firstSortedArray, andSecond: secondSortedArray)
        XCTAssert(result == [1, 2, 2, 3, 5, 6])
    }
}
