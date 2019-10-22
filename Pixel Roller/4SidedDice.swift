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

class FourSidedDice: GameViewController {
    
    override func rollD4Spot1() {
    randomD4Index = Int.random(in: 0 ... 3)
        if randomD4Index == 0 {
        diceSpot1.image = UIImage(named: d4Array[randomD4Index])
    } else if randomD4Index == 1 {
        diceSpot1.image = UIImage(named: d4Array[randomD4Index])
    } else if randomD4Index == 2 {
        diceSpot1.image = UIImage(named: d4Array[randomD4Index])
    } else {
        diceSpot1.image = UIImage(named: d4Array[randomD4Index])
        }
        
    }
    
    override func rollD4Spot2(){
        randomD4Index = Int.random(in: 0 ... 3)
        if randomD4Index == 0{
            diceSpot2.image = UIImage(named: d4Array[randomD4Index])
        } else if randomD4Index == 1 {
            diceSpot2.image = UIImage(named: d4Array[randomD4Index])
        } else if randomD4Index == 2 {
            diceSpot2.image = UIImage(named: d4Array[randomD4Index])
        } else {
            diceSpot1.image = UIImage(named: d4Array[randomD4Index])
            }
    }
    
}
