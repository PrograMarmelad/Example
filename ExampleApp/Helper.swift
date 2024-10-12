//
//  Helper.swift
//  ExampleApp
//
//  Created by Valera Zhdanov on 10.10.2024.
//

import Foundation

class Helper {
    private var numbers: [Int] = [] //1
    
    func addNumber(_ number: Int) { //2
        numbers.append(number)
    }
    
    func getNumbers() -> [Int] { //3
        numbers
    }
}
