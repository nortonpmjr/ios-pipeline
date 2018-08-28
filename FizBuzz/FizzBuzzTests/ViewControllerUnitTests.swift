import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 1)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = viewController.game?.play(move: Move.Number)
        XCTAssertNotNil(response?.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = viewController.game?.play(move: Move.Number)
        XCTAssertNotNil(response?.score)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testUserIncorrectPlay() {
        viewController.game?.score = 13
        viewController.play(move: Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 13)
    }
    
}
