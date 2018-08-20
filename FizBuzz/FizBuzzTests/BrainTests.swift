//
//  BrainTests.swift
//  FizBuzzTests
//
//  Created by Norton Pigozzo Martins Junior on 22/05/18.
//  Copyright © 2018 Norton Pigozzo Martins Junior. All rights reserved.
//

import XCTest
@testable import FizBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIfThreeIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testIfOneIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIfEightIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 8)
        XCTAssertEqual(result, false)
    }
    
    func testIfFifteenIsDivisibileByFifiteen() {
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIfTenIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 20)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testFailFizzBuzz() {
        let result = brain.check(13)
        XCTAssertEqual(result, Move.Number)
    }
    
}
