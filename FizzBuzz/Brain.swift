//
//  File.swift
//  FizzBuzz
//
//  Created by Yasmin on 01/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisible(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisible(5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisible(15, number: number)
    }
    
    func isDivisible(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    

}
