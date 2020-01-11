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

class RollD6: GameViewController{
    
    override func rollD6() {
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
}


