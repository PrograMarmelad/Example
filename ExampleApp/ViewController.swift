//
//  ViewController.swift
//  ExampleApp
//
//  Created by Valera Zhdanov on 15.09.2024.
//

import UIKit

class ViewController: UIViewController {
private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        updateNumber()
    }
    
    private func updateNumber() {
        helper.addNumber(Int.random(in: 0...10))
        
        for number in helper.getNumbers(){
            print(number)
        }
    }
}
