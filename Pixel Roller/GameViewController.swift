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
var randomD6Index = 0
var diceSpotIndex = 0
var totalPoints = 0
var d4Points = 0
var d6Points = 0




let d4Array = ["D4_1", "D4_2", "D4_3", "D4_4"]
let d6Array = ["D6_1", "D6_2", "D6_3", "D6_4", "D6_5", "D6_6"]



    

class GameViewController: UIViewController {
    

        
    @IBOutlet weak var totalScore: UILabel!
    
    @IBOutlet weak var diceSpot1: UIImageView!
    
    @IBOutlet weak var diceSpot2: UIImageView!
    
    @IBOutlet weak var diceSpot3: UIImageView!
    
    @IBOutlet weak var diceSpot4: UIImageView!
    
    @IBOutlet weak var diceSpot5: UIImageView!
    
    @IBOutlet weak var diceSpot6: UIImageView!
    
    @IBOutlet weak var diceSpot7: UIImageView!
    
    @IBOutlet weak var diceSpot8: UIImageView!
    
    @IBOutlet weak var diceSpot9: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }
    
    
    @IBAction func updateD4(_ sender: UIButton) {
        rollD4()

        switch diceSpotIndex {
        case 1:
            rollD4()
            diceSpot2.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 2
            totalPoints += d4Points
            
        case 2:
            rollD4()
            diceSpot3.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 3
            totalPoints += d4Points
        case 3:
            rollD4()
            diceSpot4.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 4
            totalPoints += d4Points
        case 4:
            rollD4()
            diceSpot5.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 5
            totalPoints += d4Points
        case 5:
            rollD4()
            diceSpot6.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 6
            totalPoints += d4Points
        case 6:
            rollD4()
            diceSpot7.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 7
            totalPoints += d4Points
        case 7:
            rollD4()
            diceSpot8.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 8
            totalPoints += d4Points
        case 8:
            rollD4()
            diceSpot9.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 9
            totalPoints += d4Points
        default:
            rollD4()
            diceSpot1.image = UIImage(named: d4Array[randomD4Index])
            diceSpotIndex = 1
            totalPoints += d4Points
            
        }
        totalScore.text = "\(totalPoints)"
        }
        
        
    @IBAction func updateD6(_ sender: UIButton) {
        rollD6()
        
        switch diceSpotIndex {
        case 1:
            rollD6()
            diceSpot2.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 2
            totalPoints += d6Points
        case 2:
            rollD6()
            diceSpot3.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 3
            totalPoints += d6Points
        case 3:
            rollD6()
            diceSpot4.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 4
            totalPoints += d6Points
        case 4:
            rollD6()
            diceSpot5.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 5
            totalPoints += d6Points
        case 5:
            rollD6()
            diceSpot6.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 6
            totalPoints += d6Points
        case 6:
            rollD4()
            diceSpot7.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 7
            totalPoints += d6Points
        case 7:
            rollD4()
            diceSpot8.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 8
            totalPoints += d6Points
        case 8:
            rollD4()
            diceSpot9.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 9
            totalPoints += d6Points
        default:
            rollD6()
            diceSpot1.image = UIImage(named: d6Array[randomD6Index])
            diceSpotIndex = 1
            totalPoints += d6Points
        }
        totalScore.text = "\(totalPoints)"
    }
    

    
    @IBAction func resetDice(_ sender: UIButton) {
        reset()
    }
    
        func rollD4(){
            randomD4Index = Int.random(in: 0 ... 3)
            if randomD4Index == 0 {
                d4Points = 1
            }else if randomD4Index == 1 {
                d4Points = 2
            }else if randomD4Index == 2 {
                d4Points = 3
            }else if randomD4Index == 3 {
                d4Points = 4
            }
            
        
    }
    
        func rollD6() {
            randomD6Index = Int.random(in: 0 ... 5)
            if randomD6Index == 0{
                d6Points = 1
            }else if randomD6Index == 1{
                d6Points = 2
            }else if randomD6Index == 2{
                d6Points = 3
            }else if randomD6Index == 3{
                d6Points = 4
            }else if randomD6Index == 4{
                d6Points = 5
            }else if randomD6Index == 5{
                d6Points = 6
            }
    }
    
        func reset() {
            diceSpotIndex = 0
            diceSpot1.image = nil
            diceSpot2.image = nil
            diceSpot3.image = nil
            diceSpot4.image = nil
            diceSpot5.image = nil
            diceSpot6.image = nil
            diceSpot7.image = nil
            diceSpot8.image = nil
            diceSpot9.image = nil
            totalPoints = 0
            totalScore.text = "\(totalPoints)"
    }


}

