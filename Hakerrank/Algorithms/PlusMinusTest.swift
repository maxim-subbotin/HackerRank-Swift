//
//  PlusMinusTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class PlusMinusTest: PracticeTest {
    var array = [1, 0, -1, 2, -3, 4]
    
    override func preExecuteAction() {
        print("Plus Minus")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        if result is [Sign:Double] {
            let p = (result as! [Sign:Double])[.plus] ?? 0
            let m = (result as! [Sign:Double])[.minus] ?? 0
            let z = (result as! [Sign:Double])[.zero] ?? 0
            print("Minus: \(m)")
            print("Zero: \(z)")
            print("Plus: \(p)")
        }
    }
    
    override func execute() -> Any? {
        return plusMinus(array)
    }
    
    enum Sign: Int {
        case minus = -1
        case zero = 0
        case plus = 1
    }
    
    func plusMinus(_ array: [Int]) -> [Sign: Double] {
        var dict: [Sign: Int] = [.minus: 0, .zero: 0, .plus: 0]
        for i in array {
            dict[Sign(rawValue: i.signum())!]! += 1
        }
        
        var result = [Sign: Double]()
        for key in dict.keys {
            result[key] = Double(dict[key]!) / Double(array.count)
        }
        return result
    }
}
