//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Yasmin on 08/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        
        let storybard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storybard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Move_One_Increments_Score() {
        viewController.play("1")
        let score = viewController.gameScore
        XCTAssertEqual(score, 1)
    }
    
    func test_Move_Two_Increments_Score() {
        viewController.play("1")
        viewController.play("2")
        let score = viewController.gameScore
        XCTAssertEqual(score, 2)
    }
    
    func test_Moce_One_Does_Not_Increment_Score() {
        viewController.play("Fizz")
        let score = viewController.gameScore
        XCTAssertEqual(score, 0)
    }
    
    func test_Has_A_Game() {
        XCTAssertNotNil(viewController.game)
    }

}
