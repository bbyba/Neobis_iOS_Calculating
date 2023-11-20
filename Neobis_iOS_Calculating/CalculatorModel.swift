//
//  Calculator Model.swift
//  Neobis_iOS_Calculating
//

import Foundation
import UIKit

struct CalculatorModel {
    var num1: Float
    var num2: Float
    var currentOperation: Operations
    
    func performOperation() -> Float {
        switch currentOperation {
        case .addition:
            return num1 + num2
        case .subtraction:
            return num1 - num2
        case .multiplication:
            return num1 * num2
        case .division:
            return num1 / num2
        }
    }

}
