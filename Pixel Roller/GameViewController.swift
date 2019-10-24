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
import AVFoundation
//variables for the dice array as well as the score values.
var randomD4Index = 0
var randomD6Index = 0
var randomD8Index = 0
var randomD10Index = 0
var randomD12Index = 0
var randomD20Index = 0
var diceSpotIndex = 0
var totalPoints = 0
var d4Points = 0
var d6Points = 0
var d8Points = 0
var d10Points = 0
var d12Points = 0
var d20Points = 0

//Arrays for the dice assets
let d4Array = ["D4_1", "D4_2", "D4_3", "D4_4"]
let d6Array = ["D6_1", "D6_2", "D6_3", "D6_4", "D6_5", "D6_6"]
let d8Array = ["D8_1", "D8_2", "D8_3", "D8_4", "D8_5", "D8_6", "D8_7", "D8_8"]
let d10Array = ["D10_1", "D10_2", "D10_3", "D10_4", "D10_5", "D10_6", "D10_7", "D10_8", "D10_9", "D10_10"]
let d12Array = ["D12_1", "D12_2", "D12_3", "D12_4", "D12_5", "D12_6", "D12_7", "D12_8", "D12_9", "D12_10", "D12_11", "D12_12"]
let d20Array = ["D20_1", "D20_2", "D20_3", "D20_4", "D20_5", "D20_6", "D20_7", "D20_8", "D20_9", "D20_10", "D20_11", "D20_12", "D20_13", "D20_14", "D20_15", "D20_16", "D20_17", "D20_18", "D20_19", "D20_20"]




    

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
    
        func rollD8() {
            randomD8Index = Int.random(in: 0 ... 7)
            if randomD8Index == 0{
                d8Points = 1
            }else if randomD8Index == 1{
                d8Points = 2
            }else if randomD8Index == 2{
                d8Points = 3
            }else if randomD8Index == 3{
                d8Points = 4
            }else if randomD8Index == 4{
                d8Points = 5
            }else if randomD8Index == 5{
                d8Points = 6
            }else if randomD8Index == 6{
                d8Points = 7
            }else if randomD8Index == 7{
                d8Points = 8
            }
    }
        
        func rollD10() {
            randomD10Index = Int.random(in: 0 ... 9)
            if randomD10Index == 0{
                d10Points = 1
            }else if randomD10Index == 1{
                d10Points = 2
            }else if randomD10Index == 2{
                d10Points = 3
            }else if randomD10Index == 3{
                d10Points = 4
            }else if randomD10Index == 4{
                d10Points = 5
            }else if randomD10Index == 5{
                d10Points = 6
            }else if  randomD10Index == 6{
                d10Points = 7
            }else if randomD10Index == 7{
                d10Points = 8
            }else if randomD10Index == 8{
                d10Points = 9
            }else if randomD10Index == 9{
                d10Points = 10
            }
    }
        func rollD12() {
            randomD12Index = Int.random(in: 0 ... 11)
            if randomD12Index == 0{
                d12Points = 1
            }else if randomD12Index == 1{
                d12Points = 2
            }else if randomD12Index == 2{
                d12Points = 3
            }else if randomD12Index == 3{
                d12Points = 4
            }else if randomD12Index == 4{
                d12Points = 5
            }else if randomD12Index == 5{
                d12Points = 6
            }else if randomD12Index == 6{
                d12Points = 7
            }else if randomD12Index == 7{
                d12Points = 8
            }else if randomD12Index == 8{
                d12Points = 9
            }else if randomD12Index == 9{
                d12Points = 10
            }else if randomD12Index == 10{
                d12Points = 11
            }else if randomD12Index == 11{
                d12Points = 12
            }
    }
    
        func rollD20() {
            randomD20Index = Int.random(in: 0 ... 19)
            if randomD20Index == 0{
                d20Points = 1
            }else if randomD20Index == 1{
                d20Points = 2
            }else if randomD20Index == 2{
                d20Points = 3
            }else if randomD20Index == 3{
                d20Points = 4
            }else if randomD20Index == 4{
                d20Points = 5
            }else if randomD20Index == 5{
                d20Points = 6
            }else if randomD20Index == 6{
                d20Points = 7
            }else if randomD20Index == 7{
                d20Points = 8
            }else if randomD20Index == 8{
                d20Points = 9
            }else if randomD20Index == 9{
                d20Points = 10
            }else if randomD20Index == 10{
                d20Points = 11
            }else if randomD20Index == 11{
                d20Points = 12
            }else if randomD20Index == 12{
                d20Points = 13
            }else if randomD20Index == 13{
                d20Points = 14
            }else if randomD20Index == 14{
                d20Points = 15
            }else if randomD20Index == 15{
                d20Points = 16
            }else if randomD20Index == 16{
                d20Points = 17
            }else if randomD20Index == 17{
                d20Points = 18
            }else if randomD20Index == 18{
                d20Points = 19
            }else if randomD20Index == 19{
                d20Points = 20
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

