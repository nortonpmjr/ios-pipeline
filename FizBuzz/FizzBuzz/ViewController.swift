import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else { return }
            numberButton.setTitle("\(score)", for: .normal)
        }
    }
    var game: Game?

    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        guard let game = self.game else { return }
        self.gameScore = game.score
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let game = game else {
            print("Game is nil")
            return
        }
        
        let response = game.play(move: move)
        gameScore = response.score
    }
    @IBAction func buttonTapped(_ sender: Any) {
        play(move: Move.number)
        
    }
    
    @IBAction func fizzTapped(_ sender: Any) {
        play(move: .fizz)
    }
    
    @IBAction func buzzTapped(_ sender: Any) {
        play(move: .buzz)
    }
    
    @IBAction func fizzBuzzTapped(_ sender: Any) {
        play(move: .fizzBuzz)
    }
    
}

