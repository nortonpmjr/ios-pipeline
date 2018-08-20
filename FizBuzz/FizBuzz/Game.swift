//
//  Game.swift
//  FizBuzz
//
//  Created by Norton Pigozzo Martins Junior on 22/05/18.
//  Copyright © 2018 Norton Pigozzo Martins Junior. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain
    init() {
        self.score = 0
        self.brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int){
        let result = brain.check(score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
