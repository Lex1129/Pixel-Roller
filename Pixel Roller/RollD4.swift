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

class RollD4: GameViewController {
    override func rollD4(){
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
    totalPoints += d4Points
    randomView.image = UIImage(named: d4Array[randomD4Index])
    view.addSubview(randomView)
    totalScore.text = "\(totalPoints)"
    
}

}
