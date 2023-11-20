//
//  View.swift
//  Neobis_iOS_Calculating
//

import UIKit
import Foundation

class CalculatorView: UIView {
    
    var display: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: 65)
        label.textColor = .white
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //1st row
    let acButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 40
        button.setTitle("AC", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let plusMinusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 40
        button.setTitle("+/-", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    let percentageButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 40
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    let divideButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("÷", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //2nd row
            
    let sevenButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let eightButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let nineButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
        
    let multiplyButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("x", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //3rd row
    let fourButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let fiveButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let sixButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let subtractButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //4rth row
    
    let oneButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let twoButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let threeButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let addButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    //5th row
    let zeroButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let decimalsButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle(".", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        //        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let equalsButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("=", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
//        button.addTarget(self, action: #selector, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let firstRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let secondRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let thirdRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fourthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fifthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical  //definal perpendicularly
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews(){
        addSubview(display)
        addSubview(firstRow)
        addSubview(secondRow)
        addSubview(thirdRow)
        addSubview(fourthRow)
        addSubview(fifthRow)
        
        firstRow.addSubview(acButton)
        firstRow.addSubview(plusMinusButton)
        firstRow.addSubview(percentageButton)
        firstRow.addSubview(divideButton)
        
        secondRow.addSubview(sevenButton)
        secondRow.addSubview(eightButton)
        secondRow.addSubview(nineButton)
        secondRow.addSubview(multiplyButton)
        
        thirdRow.addSubview(fourButton)
        thirdRow.addSubview(fiveButton)
        thirdRow.addSubview(sixButton)
        thirdRow.addSubview(subtractButton)
        
        fourthRow.addSubview(oneButton)
        fourthRow.addSubview(twoButton)
        fourthRow.addSubview(threeButton)
        fourthRow.addSubview(addButton)
        
        fifthRow.addSubview(zeroButton)
        fifthRow.addSubview(decimalsButton)
        fifthRow.addSubview(equalsButton)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            display.bottomAnchor.constraint(equalTo: firstRow.topAnchor, constant: -20),
            display.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            display.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            firstRow.bottomAnchor.constraint(equalTo: secondRow.topAnchor, constant: -15),
            firstRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            firstRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            firstRow.heightAnchor.constraint(equalToConstant: 70),
            
            secondRow.bottomAnchor.constraint(equalTo: thirdRow.topAnchor, constant: -15),
            secondRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            secondRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            secondRow.heightAnchor.constraint(equalToConstant: 70),
            
            thirdRow.bottomAnchor.constraint(equalTo: fourthRow.topAnchor, constant: -15),
            thirdRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            thirdRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            thirdRow.heightAnchor.constraint(equalToConstant: 70),
            
            fourthRow.bottomAnchor.constraint(equalTo: fifthRow.topAnchor, constant: -15),
            fourthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fourthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fourthRow.heightAnchor.constraint(equalToConstant: 70),
            
            fifthRow.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            fifthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fifthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fifthRow.heightAnchor.constraint(equalToConstant: 70),
            
            zeroButton.widthAnchor.constraint(equalToConstant: 180),
            decimalsButton.widthAnchor.constraint(equalToConstant: 80),
            equalsButton.widthAnchor.constraint(equalToConstant: 80),
        ])
        
    }


}
