//
//  Game.swift
//  FizzBuzz
//
//  Created by Yasmin on 08/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import Foundation

class Game : NSObject {
    var score: Int
    let fizzBuzz: FizzBuzz
    
    override init() {
        score = 0
        fizzBuzz = FizzBuzz()
        super.init()
    }
    
    func play(move: String) -> (right: Bool, score: Int) {
        score++
        let result = fizzBuzz.checkFizzBuzz(score)
        
        if (result == move) {
            return (true, score)
        }
            
        else {
            score--
            return (false, score)
        }
    }
}
