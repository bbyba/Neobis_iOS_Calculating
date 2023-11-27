//
//  View.swift
//  Neobis_iOS_Calculating
//

import UIKit
import Foundation

class CalculatorView: UIView {
    
    var display: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 65)
        label.textColor = .white
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.isUserInteractionEnabled = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //1st row
    let cButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 40
        button.setTitle("C", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let plusMinusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 40
        button.setTitle("+/-", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    let percentageButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 40
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    let divideButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("÷", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
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
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let eightButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let nineButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
        
    let multiplyButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("x", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
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
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let fiveButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let sixButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let subtractButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
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
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let twoButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let threeButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 40
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let addButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
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
        stackView.axis = .horizontal  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let secondRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let thirdRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fourthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fifthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal  //definal perpendicularly
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor = .black
        
        addSubviews()
        setupConstraints()
    }
    
    func addSubviews(){
        addSubview(display)
        addSubview(firstRow)
        addSubview(secondRow)
        addSubview(thirdRow)
        addSubview(fourthRow)
        addSubview(fifthRow)
        
        firstRow.addArrangedSubview(cButton)
        firstRow.addArrangedSubview(plusMinusButton)
        firstRow.addArrangedSubview(percentageButton)
        firstRow.addArrangedSubview(divideButton)
        
        secondRow.addArrangedSubview(sevenButton)
        secondRow.addArrangedSubview(eightButton)
        secondRow.addArrangedSubview(nineButton)
        secondRow.addArrangedSubview(multiplyButton)
        
        thirdRow.addArrangedSubview(fourButton)
        thirdRow.addArrangedSubview(fiveButton)
        thirdRow.addArrangedSubview(sixButton)
        thirdRow.addArrangedSubview(subtractButton)
        
        fourthRow.addArrangedSubview(oneButton)
        fourthRow.addArrangedSubview(twoButton)
        fourthRow.addArrangedSubview(threeButton)
        fourthRow.addArrangedSubview(addButton)
        
        fifthRow.addArrangedSubview(zeroButton)
        fifthRow.addArrangedSubview(decimalsButton)
        fifthRow.addArrangedSubview(equalsButton)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            display.bottomAnchor.constraint(equalTo: firstRow.topAnchor, constant: -15),
            display.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            display.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            display.heightAnchor.constraint(equalToConstant: 80),
            
            firstRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            firstRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            firstRow.bottomAnchor.constraint(equalTo: secondRow.topAnchor, constant: -15),
            firstRow.heightAnchor.constraint(equalToConstant: 80),

            cButton.heightAnchor.constraint(equalToConstant: 80),
            cButton.widthAnchor.constraint(equalToConstant: 80),
            plusMinusButton.heightAnchor.constraint(equalToConstant: 80),
            plusMinusButton.widthAnchor.constraint(equalToConstant: 80),
            percentageButton.heightAnchor.constraint(equalToConstant: 80),
            percentageButton.widthAnchor.constraint(equalToConstant: 80),
            divideButton.heightAnchor.constraint(equalToConstant: 80),
            divideButton.widthAnchor.constraint(equalToConstant: 80),
            
            secondRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            secondRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            secondRow.bottomAnchor.constraint(equalTo: thirdRow.topAnchor, constant: -15),
            secondRow.heightAnchor.constraint(equalToConstant: 80),

            sevenButton.heightAnchor.constraint(equalToConstant: 80),
            sevenButton.widthAnchor.constraint(equalToConstant: 80),
            eightButton.heightAnchor.constraint(equalToConstant: 80),
            eightButton.widthAnchor.constraint(equalToConstant: 80),
            nineButton.heightAnchor.constraint(equalToConstant: 80),
            nineButton.widthAnchor.constraint(equalToConstant: 80),
            multiplyButton.heightAnchor.constraint(equalToConstant: 80),
            multiplyButton.widthAnchor.constraint(equalToConstant: 80),
            
            thirdRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            thirdRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            thirdRow.bottomAnchor.constraint(equalTo: fourthRow.topAnchor, constant: -15),
            thirdRow.heightAnchor.constraint(equalToConstant: 80),

            fourButton.heightAnchor.constraint(equalToConstant: 80),
            fourButton.widthAnchor.constraint(equalToConstant: 80),
            fiveButton.heightAnchor.constraint(equalToConstant: 80),
            fiveButton.widthAnchor.constraint(equalToConstant: 80),
            sixButton.heightAnchor.constraint(equalToConstant: 80),
            sixButton.widthAnchor.constraint(equalToConstant: 80),
            subtractButton.heightAnchor.constraint(equalToConstant: 80),
            subtractButton.widthAnchor.constraint(equalToConstant: 80),
            
            fourthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fourthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fourthRow.bottomAnchor.constraint(equalTo: fifthRow.topAnchor, constant: -15),
            fourthRow.heightAnchor.constraint(equalToConstant: 80),

            oneButton.heightAnchor.constraint(equalToConstant: 80),
            oneButton.widthAnchor.constraint(equalToConstant: 80),
            twoButton.heightAnchor.constraint(equalToConstant: 80),
            twoButton.widthAnchor.constraint(equalToConstant: 80),
            threeButton.heightAnchor.constraint(equalToConstant: 80),
            threeButton.widthAnchor.constraint(equalToConstant: 80),
            addButton.heightAnchor.constraint(equalToConstant: 80),
            addButton.widthAnchor.constraint(equalToConstant: 80),
            
            fifthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fifthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fifthRow.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30),
            fifthRow.heightAnchor.constraint(equalToConstant: 80),

            zeroButton.heightAnchor.constraint(equalToConstant: 80),
            zeroButton.widthAnchor.constraint(equalToConstant: 185),
            decimalsButton.heightAnchor.constraint(equalToConstant: 80),
            decimalsButton.widthAnchor.constraint(equalToConstant: 80),
            equalsButton.heightAnchor.constraint(equalToConstant: 80),
            equalsButton.widthAnchor.constraint(equalToConstant: 80),
            fifthRow.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            fifthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fifthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fifthRow.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
//    func buttonWidth(button: CalculatorButton) -> CGFloat {
//        return (UIScreen.main.bounds.width - 5 * 12)/4}
}
