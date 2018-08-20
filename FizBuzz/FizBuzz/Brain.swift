//
//  Brain.swift
//  FizBuzz
//
//  Created by Norton Pigozzo Martins Junior on 22/05/18.
//  Copyright © 2018 Norton Pigozzo Martins Junior. All rights reserved.
//

import Foundation

class Brain {

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(_ number: Int) -> Move {
        
//        var result = String(describing: number)
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        } else if isDivisibleByThree(number: number) {
            return Move.Fizz
        } else if isDivisibleByFive(number: number) {
            return Move.Buzz
        }
        
        return Move.Number
        
    }
}
