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

class operationsValues {
    var operate: [String:(Double, Double)]()
 
    init(operate: [String:(Double, Double)]) {
        self.operate = operate
    }
}

func testingValues(_ operation: operationsValues) -> Double {
    return operations
}

testingValues(operation)


