import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: Move.number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzIsRight() {
        game.score = 4
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzIsWrong() {
        game.score = 5
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzIsRight() {
        game.score = 14
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzIsWrong() {
        game.score = 15
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsCorrect() {
        game.score = 1
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberIsWrong() {
        game.score = 2
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: Move.fizz)
        XCTAssertEqual(game.score, 1)
    }
    
//    * Correct “Buzz” move.
//    * Incorrect “Buzz” move.
//    * Correct “FizzBuzz” move.
//    * Incorrect “FizzBuzz” move.
//    * Correct “number” move.
//    * Incorrect “number” move.
}
