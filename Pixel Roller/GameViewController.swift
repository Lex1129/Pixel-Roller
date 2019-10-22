//
//  GameViewController.swift
//  Pixel Roller v0.1.0
//
//  Created by Alexander Fernandez on 10/18/19.
//  Created by Nick Oquendo on 10/18/19
//  Created by Trent Maduro on 10/18/19
//  Copyright © 2019 Octohedron Studios. All rights reserved.
//

import UIKit
import SpriteKit

var randomD4Index = 0
var diceSpotIndex = 0
let spotIncrease = 1

let d4Array = ["D4_1", "D4_2", "D4_3", "D4_4"]

class GameViewController: UIViewController {
    
    
    
    @IBOutlet weak var diceSpot1: UIImageView!
    
    @IBOutlet weak var diceSpot2: UIImageView!
    
    @IBOutlet weak var diceSpot3: UIImageView!
    
    @IBOutlet weak var diceSpot4: UIImageView!
    
    @IBOutlet weak var diceSpot5: UIImageView!
    
    @IBOutlet weak var diceSpot6: UIImageView!
    
    @IBOutlet weak var diceSpot7: UIImageView!
    
    @IBOutlet weak var diceSpot8: UIImageView!
    
    @IBOutlet weak var diceSpot9: UIImageView!
    
    
    @IBAction func updateD4(_ sender: UIButton) {
        rollD4()
        switch diceSpotIndex {
        case 1:
            rollD4()
            diceSpot2.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 2
        case 2:
            rollD4()
            diceSpot3.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 3
        case 3:
            rollD4()
            diceSpot4.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 4
        default:
            rollD4()
            diceSpot1.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 1
        }
        }
        
        
        func rollD4(){
        randomD4Index = Int.random(in: 0 ... 3)
        
        
    }
    
    
    
    

}
