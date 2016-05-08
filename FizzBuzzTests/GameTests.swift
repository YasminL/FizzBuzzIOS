//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Yasmin on 08/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import XCTest

class GameTests: XCTestCase {
    
    let game = Game()

    func test_Game_Starts_At_Zero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func test_Move_Is_Fizz_And_Player_Is_Correct() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_Fizz_And_Player_Is_Incorrect() {
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_Buzz_And_Player_Is_Correct() {
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_Buzz_And_Player_Is_Incorrect() {
        game.score = 1
        let result = game.play("Buzz")
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_FizzBuzz_And_Player_Is_Correct() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_FizzBuzz_And_Player_Is_Incorrect() {
        game.score = 1
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_Incorrect_And_No_Score_Is_Added() {
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 2)
    }
}
