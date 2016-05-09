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
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_Fizz_And_Player_Is_Incorrect() {
        game.score = 1
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_Buzz_And_Player_Is_Correct() {
        game.score = 4
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_Buzz_And_Player_Is_Incorrect() {
        game.score = 1
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_FizzBuzz_And_Player_Is_Correct() {
        game.score = 14
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func test_Move_Is_FizzBuzz_And_Player_Is_Incorrect() {
        game.score = 1
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func test_Move_Is_Incorrect_And_No_Score_Is_Added() {
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func test_Play_Should_Return_If_Move_Is_Right() {
        let response = game.play("1")
        XCTAssertNotNil(response.right)
    }
    
    func test_Play_Should_Return_New_Score() {
        let response = game.play("1")
        XCTAssertNotNil(response.score)
    }
}




























