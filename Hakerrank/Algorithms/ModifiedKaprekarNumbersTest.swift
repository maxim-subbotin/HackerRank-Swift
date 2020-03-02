//
//  ModifiedKaprekarNumbersTest.swift
//  Hakerrank
//
//  Created on 3/2/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ModifiedKaprekarNumbersTest: PracticeTest {
    let p = 1
    let q = 100 // [1, 9, 45, 55, 99]
    
    override func preExecuteAction() {
        print("Modified Kaprekar Numbers")
    }
    
    override func postExecuteAction() {
        print("P = \(p), Q = \(q)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        var kaprekars = [Int]()
        for i in p...q {
            if isKaprekar(n: i) {
                kaprekars.append(i)
            }
        }
        if kaprekars.count == 0 {
            return "INVALID RANGE"
        } else {
            return kaprekars
        }
    }
    
    func isKaprekar(n: Int) -> Bool {
        let r = "\(n)".count
        let chars = "\(n * n)".map({ "\($0)" })
        var right = [String]()
        var left = [String]()
        for i in 0..<chars.count {
            if i < chars.count - r {
                left.append(chars[i])
            } else {
                right.append(chars[i])
            }
        }
        let a = Int(right.joined()) ?? 0
        let b = Int(left.joined()) ?? 0
        if a + b == n {
            return true
        }
        
        return false
    }
}
