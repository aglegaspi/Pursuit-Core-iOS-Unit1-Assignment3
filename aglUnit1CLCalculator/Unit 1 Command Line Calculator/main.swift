//  main.swift
//  Unit 1 Command Line Calculator
//
//  Created by Alexander George Legaspi on 7/19/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.

import Foundation

// readLine() source: https://www.journaldev.com/19612/swift-readline-swift-print

print("ALEX'S 🤓 CALCULATOR")
print("Enter operation (e.g. 5 + 3) -or- type 'quit' to exit") //, terminator: " ")

while let input = readLine() {
    
    guard input != "quit" else {
        break
    }
    
    let inputArray: Array? = input.split {$0 == " "}.map(String.init)

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
                                print("🛑 You can only use +, *, -, / as operators. Thank you!")
                        }
                    }
                
                }
        
            }
            
            let myTest = operationsValues(operateThis: myDictionary)
            myTest.gimmeResult()
        }
        
    }
    print("")
    print("Enter operation (e.g. 5 + 3) -or- type 'quit' to exit") //, terminator: " ")
}
