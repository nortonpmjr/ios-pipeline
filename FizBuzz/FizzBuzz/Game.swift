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
