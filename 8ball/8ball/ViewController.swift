//
//  ViewController.swift
//  8ball
//
//  Created by Stewart Rhodes on 2/18/19.
//  Copyright © 2019 Black Wolf Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    @IBOutlet weak var eightBallImageView1: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
       
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
    }
    
    func newBallImage () {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        eightBallImageView1.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

