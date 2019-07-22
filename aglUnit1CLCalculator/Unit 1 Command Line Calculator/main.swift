//  main.swift
//  Unit 1 Command Line Calculator
//
//  Created by Alexander George Legaspi on 7/19/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.

import Foundation

var operations: ([String: (Double, Double) -> Double]) =
    ["+": { $0 + $1 },
     "-": { $0 - $1 },
     "*": { $0 * $1 },
     "/": { $0 / $1 }]

// Incorporate operations into a command line application.
// Parse input from the user into operator
// and two operands
// run the operation and
// return the answer.
// Reject non-conforming ops with a message.
// prompt the user to enter operation with example (e.g. 5 + 3) and store the input in a variable


//    switch chosenOp {
//    case "+":
//        return (num1 + num2)
//    case "-":
//        return (num1 - num2)
//    case "*":
//        return (num1 * num2)
//    case "/":
//        return (num1 / num2)
//    default:
//        return 0.00
//    }

//let test1 = operationsValues()
//print(test1.gimmeResult(operator: "%", firstNum: 5.0, secondNum: 3.3))

// testing an input with a for loop to generate the requested values

let myInput = "5 + 3"
var myStringValue = ""
var num1 = ""
var num2 = ""


if myInput.contains("+") {
    myStringValue = "+"
}

for (index, value) in myInput.enumerated() {
    if index == 0 {
        num1 = String(value)
    }
    if index == 4 {
        num2 = String(value)
    }
}

var tupleOne = Double(num1)!
var tupleTwo = Double(num2)!

var myDictionary = [myStringValue: (tupleOne,tupleTwo)]
print(myDictionary)


class operationsValues {
    var operateThis: [String: (Double,Double)]
    
    init(operateThis: [String: (Double,Double)]) {
        self.operateThis = operateThis
    }
    
    func gimmeResult() -> Double {
        var output = 0.00
        
        for (key,value) in operateThis {
            
            switch key {
            case "+":
                output = (value.0 + value.1)
            case "-":
                output = (value.0 - value.1)
            case "*":
                output = (value.0 * value.1)
            case "/":
                output = (value.0 / value.1)
            default:
                output = 0.00
            }
            
        }
        return output
    }
    
}

let myTest = operationsValues(operateThis: myDictionary)
print(myTest.gimmeResult())
