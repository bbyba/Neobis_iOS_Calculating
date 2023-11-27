//
//  Calculator Model.swift
//  Neobis_iOS_Calculating
//

import Foundation

enum Operations: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "x"
    case division = "÷"
}

class CalculatorModel {
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var currentOperation: Operations?
    
    init(currentOperation: Operations?) {
        self.currentOperation = currentOperation
    }
    
    var performOperation: Double {
        guard let operation = currentOperation else { return 0 }
        
        switch operation {
        case .addition:
            return firstNumber + secondNumber
        case .subtraction:
            return firstNumber - secondNumber
        case .multiplication:
            return firstNumber * secondNumber
        case .division:
            return firstNumber / secondNumber
        }
    }
}
