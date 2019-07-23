//  main.swift
//  Unit 1 Command Line Calculator
//
//  Created by Alexander George Legaspi on 7/19/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.

import Foundation

//var operations: ([String: (Double, Double) -> Double]) =
//    ["+": { $0 + $1 },
//     "-": { $0 - $1 },
//     "*": { $0 * $1 },
//     "/": { $0 / $1 }]

// Incorporate operations into a command line application.
// Parse input from the user into operator
// and two operands
// run the operation and
// return the answer.
// Reject non-conforming ops with a message.
// prompt the user to enter operation with example (e.g. 5 + 3) and store the input in a variable

print("Enter operation with example (e.g. 5 + 3):") //, terminator: " ")

let inputArray = readLine()?.split {$0 == " "}.map(String.init)
var userOperator = ""
var numOne: Double
var numTwo: Double

if let numOne = inputArray?[0], let userOperator = inputArray?[1], let numTwo = inputArray?[2] {
    
    if let numOne = Double(numOne), let numTwo = Double(numTwo)  {
        
        let myDictionary = [userOperator: (numOne,numTwo)]
        
        class operationsValues {
            var operateThis: [String: (Double,Double)]
            
            init(operateThis: [String: (Double,Double)]) {
                self.operateThis = operateThis
            }
            
            func gimmeResult() {
                
                for (key,value) in operateThis {
                    
                    switch key {
                        
                    case "+":
                        print(value.0 + value.1)
                    case "-":
                        print(value.0 - value.1)
                    case "*":
                        print(value.0 * value.1)
                    case "/":
                        print(value.0 / value.1)
                        
                    default:
                        print("You can only use +, *, -, / as operators. Thank you!")
                    }
                    
                }
            
            }
    
        }
        
        let myTest = operationsValues(operateThis: myDictionary)
        myTest.gimmeResult()
    }
    
}


