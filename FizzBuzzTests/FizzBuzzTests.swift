//
//  FizzBuzzTests.swift
//  FizzBuzz
//
//  Created by Yasmin on 01/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    let fizzBuzz = FizzBuzz()
    
    func test_Say_Fizz_If_Divisible_By_Three() {
        let number: Int = 3
        let result = fizzBuzz.checkFizzBuzz(number)
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_Say_Buzz_If_Divisible_By_Five() {
        let number: Int = 5
        let result = fizzBuzz.checkFizzBuzz(number)
        XCTAssertEqual(result, "Buzz")
    }
    
    func test_Say_FizzBuzz_If_Divisible_By_Five_And_Three() {
        let number: Int = 15
        let result = fizzBuzz.checkFizzBuzz(number)
        XCTAssertEqual(result, "FizzBuzz")
    }
    

}
