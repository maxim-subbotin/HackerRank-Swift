//
//  FindDigitsTest.swift
//  Hakerrank
//
//  Created on 2/21/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class FindDigitsTest: PracticeTest {
    let n = 1012
    
    override func preExecuteAction() {
        print("Find Digits")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processNumber(n)
    }
    
    func processNumber(_ num: Int) -> Int {
        var c = 0
        for d in getDigits(num) {
            if d == 0 {
                continue
            }
            if num % d == 0 {
                c += 1
            }
        }
        return c
    }
    
    func getDigits(_ num: Int) -> [Int] {
        let digits = "\(num)".map({ String($0) }).map({ Int($0) ?? 0 })
        return digits
    }
}
