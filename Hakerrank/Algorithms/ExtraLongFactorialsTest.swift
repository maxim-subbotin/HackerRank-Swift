//
//  ExtraLongFactorialsTest.swift
//  Hakerrank
//
//  Created on 2/21/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ExtraLongFactorialsTest: PracticeTest {
    let n = 45
    
    override func preExecuteAction() {
        print("Extra Long Factorials")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("N! = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return fact(n)
    }

    func multiply(_ digits: [Int], m: Int) -> [Int] {
        let multArray = digits.map({ $0 * m })
        
        var result = [Int]()
        var c = 0
        for val in multArray.reversed() {
            let total = val + c
            let digit = total % 10
            c = total / 10
            result.append(digit)
        }

        while c > 0 {
            let digit = c % 10
            c = c / 10
            result.append(digit)
        }

        return result.reversed()
    }

    func fact(_ n: Int) -> String {
        if n == 0 {
            return "1"
        }
        if n == 1 || n == 2 {
            return "\(n)"
        }
        
        var result = [1]
        for i in 2...n {
            result = multiply(result, m: i)
        }

        return result.map(String.init).joined()
    }
}
