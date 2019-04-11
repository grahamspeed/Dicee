//
//  ViewController.swift
//  Dicee
//
//  Created by Graham Speed on 11/04/2019.
//  Copyright © 2019 Graham Speed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceindex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImage()
        
    }
    
    func updateDiceImage() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceindex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceindex2])
        
    }
    
}

