//
//  BrainTests2.swift
//  FizzBuzz
//
//  Created by Yasmin on 01/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    func test_Is_Divisible_By_Three() {
        let number: Int = 3
        let result = brain.isDivisibleByThree(number)
        XCTAssertEqual(result, true)
    }
    
    func test_Is_Not_Divisible_By_Three() {
        let number: Int = 1
        let result = brain.isDivisibleByThree(number)
        XCTAssertEqual(result, false)
    }
    
    func test_Is_Divisible_By_Five() {
        let number = 5
        let result = brain.isDivisibleByFive(number)
        XCTAssertEqual(result, true)
    }
    
    func test_Is_Not_Divisible_By_Five() {
        let number: Int = 6
        let result = brain.isDivisibleByFive(number)
        XCTAssertEqual(result, false)
    }
    
    func test_Is_Divisible_By_Fifteen() {
        let number: Int = 15
        let result = brain.isDivisibleByFifteen(number)
        XCTAssertEqual(result, true)
    }
    
    func test_Is_Not_Divisible_By_Fifteen() {
        let number: Int = 16
        let result = brain.isDivisibleByFifteen(number)
        XCTAssertEqual(result, false)
    }
}
