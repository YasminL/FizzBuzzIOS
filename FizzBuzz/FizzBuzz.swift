//
//  File.swift
//  FizzBuzz
//
//  Created by Yasmin on 01/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import Foundation

class FizzBuzz: NSObject {
    
    let brain = Brain()

    func checkFizzBuzz(number: Int) -> String? {
        
        if brain.isDivisibleByFifteen(number) {
            return "FizzBuzz"
        }
        
        else if brain.isDivisibleByThree(number) {
            return "Fizz"
        }
        
        else if brain.isDivisibleByFive(number) {
            return "Buzz"
        }
        else {
            return String(number)
        }
    }
}