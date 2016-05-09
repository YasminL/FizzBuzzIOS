//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Yasmin on 01/05/16.
//  Copyright © 2016 Yasmin.FizzBuzz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game: Game?
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(points: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(points)
        gameScore = response.score
    }
    


}

