//
//  ViewController.swift
//  Dicee
//
//  Created by Mehrdad Alemzadeh on 8/25/19.
//  Copyright © 2019 Mehrdad Alemzadeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randIndex1: Int = 0
    var randIndex2: Int = 0
    
    let diceList = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomizeDice ()
    }

    
    @IBAction func pressedButton(_ sender: UIButton) {
        randomizeDice ()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype,
                     with event: UIEvent?) {
        randomizeDice ()
    }
    
    func randomizeDice () {
        randIndex1 = Int.random(in: 1 ... 5)
        randIndex2 = Int.random(in: 1 ... 5)
        
        //print (randIndex1)
        
        diceImageView1.image = UIImage(named: diceList[randIndex1])
        diceImageView2.image = UIImage(named: diceList[randIndex2])
    }
}

