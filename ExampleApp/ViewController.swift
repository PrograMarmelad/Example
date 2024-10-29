//
//  ViewController.swift
//  ExampleApp
//
//  Created by Valera Zhdanov on 15.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        updateNumber()
        
        setupLabel()
        view.addSubview(textLabel)
    }
    
    private func updateNumber() {
        helper.addNumber(Int.random(in: 0...10))
        
        for number in helper.getNumbers(){
            print(number)
        }
    }
    
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = firstNumber?.formatted()
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .red
        textLabel.frame = CGRect(x: 30, y: 30, width: 100, height: 50)
    }
}
