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
    
    func test() {
        XCTAssertTrue(true)
    }

}
