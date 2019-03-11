//
//  Basic Data 3.swift
//  iOS_interviewTests
//
//  Created by JH on 2019/3/11.
//  Copyright © 2019 Jia. All rights reserved.
//

import XCTest
@testable import iOS_interview

class Basic_Data_3Tests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testTwoSum() {
        let nums = [1,2,3,4,5,6,7,8,6]
        XCTAssertTrue(twoSum(nums: nums, 13))
        XCTAssertTrue(twoSum(nums: nums, 3))
        XCTAssertFalse(twoSum(nums: nums, 2))
        XCTAssertFalse(twoSum(nums: nums, 20))
    }
    
    func testTwoSumIndex() {
        let nums = [1,2,4,7,12,20,33,54]
        
        XCTAssertTrue(twoSumIndex(nums,3) != nil)
        XCTAssertTrue(twoSumIndex(nums,11) != nil)
        XCTAssertTrue(twoSumIndex(nums, 57) == nil)
        XCTAssertTrue(twoSumIndex(nums, 0) == nil)
    }
    
    func testReverseWord() {
        XCTAssertTrue(reverseWords(s: "hello world") == "world hello")
    }
}
