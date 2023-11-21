//
//  ViewController.swift
//  Neobis_iOS_Calculating


import UIKit

class ViewController: UIViewController {
    
    let calculatorView = CalculatorView()
    var calculator = CalculatorModel(currentOperation: .addition)
    var userIsTypingTheNumber: Bool = false
    var decimalUsed: Bool = false
    var equalsButtonPressed: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(calculatorView)
        buttonsConstraints()
        addTargets()
    }

    func buttonsConstraints() {
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            calculatorView.topAnchor.constraint(equalTo: view.topAnchor),
            calculatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            calculatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calculatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
    }
    
    func addTargets(){
        calculatorView.zeroButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.oneButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.twoButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.threeButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.fourButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.fiveButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.sixButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.sevenButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.eightButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)
        calculatorView.nineButton.addTarget(self, action: #selector(didTapNumbers(_ :)), for: .touchUpInside)

        calculatorView.cButton.addTarget(self, action: #selector(didTapAllClear(_ :)), for: .touchUpInside)
        calculatorView.plusMinusButton.addTarget(self, action: #selector(didTapSignChange(_ :)), for: .touchUpInside)
        calculatorView.percentageButton.addTarget(self, action: #selector(didTapPercentage(_ :)), for: .touchUpInside)
        calculatorView.decimalsButton.addTarget(self, action: #selector(didTapDecimals(_ :)), for: .touchUpInside)
        
        calculatorView.addButton.addTarget(self, action: #selector(didTapOperations(_ :)), for: .touchUpInside)
        calculatorView.subtractButton.addTarget(self, action: #selector(didTapOperations(_ :)), for: .touchUpInside)
        calculatorView.multiplyButton.addTarget(self, action: #selector(didTapOperations(_ :)), for: .touchUpInside)
        calculatorView.divideButton.addTarget(self, action: #selector(didTapOperations(_ :)), for: .touchUpInside)
        calculatorView.equalsButton.addTarget(self, action: #selector(didTapEquals(_ :)), for: .touchUpInside)
    }

    @objc func didTapNumbers(_ sender: UIButton){
        if let numberButtonText = sender.title(for: .normal) {
            if calculatorView.display.text == "0" || equalsButtonPressed == true {
                calculatorView.display.text = numberButtonText
                equalsButtonPressed = false
            } else {
                calculatorView.display.text! += numberButtonText
            }
        }
    }

    @objc func didTapAllClear(_ sender: UIButton){
        calculatorView.display.text = "0"
    }

    @objc func didTapSignChange(_ sender: UIButton){
        if var text = calculatorView.display.text, var number = Double(text) {
            if number == floor(number) {
                text = String(format: "%d", Int(number) * -1)
            } else {
                number *= -1
                text = String(number)
            }
            calculatorView.display.text = text
        }
    }

    @objc func didTapPercentage(_ sender: UIButton){
        if var text = calculatorView.display.text, let number = Double(text) {
            let changedNumber = number / 100
            text = String(changedNumber)
            calculatorView.display.text = text
        }
    }

    @objc func didTapDecimals(_ sender: UIButton){
        if var text = calculatorView.display.text {
            if calculatorView.display.text == "0" {
                calculatorView.display.text = "0."
            } else {
                calculatorView.display.text! += "."
            }
        }
    }
    
    @objc func didTapOperations(_ sender: UIButton) {
        if let operationSymbol = sender.title(for: .normal),
           let operation = Operations(rawValue: operationSymbol) {
            
            if let currentDisplayText = calculatorView.display.text,
               let currentNumber = Double(currentDisplayText) {
                
                if calculator.currentOperation != nil {
                    calculator.secondNumber = currentNumber
                    let result = calculator.performOperation
                    
                    if result == floor(result) {
                        calculatorView.display.text = String(format: "%.0f", result)
                    } else {
                        calculatorView.display.text = String(result)
                    }
                    
                    calculator.firstNumber = result
                } else {
                    calculator.firstNumber = currentNumber
                }
            }
            calculator.currentOperation = operation
            calculatorView.display.text = ""
        }
    }
    
    @objc func didTapEquals(_ sender: UIButton) {
        if let currentDisplayText = calculatorView.display.text,
           let currentNumber = Double(currentDisplayText) {
            
            calculator.secondNumber = currentNumber
            let result = calculator.performOperation
            
            if result == floor(result) {
                calculatorView.display.text = String(format: "%.0f", result)
            } else {
                calculatorView.display.text = String(result)
            }

            calculator.currentOperation = nil
            calculator.firstNumber = 0
            calculator.secondNumber = 0
            equalsButtonPressed = true
        }
    }
}

