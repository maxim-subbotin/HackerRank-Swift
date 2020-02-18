//
//  BonAppetitTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/14/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BonAppetitTest: PracticeTest {
    let k = 1
    let array = [3, 10, 2, 9]
    let b = 12
    
    override func preExecuteAction() {
        print("Bon Appetit")
    }
    
    override func postExecuteAction() {
        print("k = \(k)")
        print("Array: \(array)")
        print("b = \(b)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        let res = checkResult(k, array: array, b: b)
        return res == 0 ? "Bon Appetit" : "\(res)"
    }
    
    func checkResult(_ k: Int, array: [Int], b: Int) -> Int {
        var sum = 0
        for i in 0..<array.count {
            if i != k {
                sum += array[i]
            }
        }
        let avg = sum / 2
        
        return b - avg
    }
}
