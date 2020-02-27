//
//  BestDivisorTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BestDivisorTest: PracticeTest {
    //let n = 12 // -> 6
    let n = 124680246
    
    override func preExecuteAction() {
        print("Best Divisor")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processNumber(n)
    }
    
    func processNumber(_ n: Int) -> Int {
        let divs = getDivisors(forN: n)
        var maxSum = 0
        var maxValues = [Int]()
        for d in divs {
            let s = sumOfDigits(forN: d)
            if s > maxSum {
                maxSum = s
                maxValues.removeAll()
                maxValues.append(d)
            } else if s == maxSum {
                maxValues.append(d)
            }
        }
        
        if maxValues.count == 1 {
            return maxValues[0]
        }
        
        var minVal = maxValues[0]
        for i in 1..<maxValues.count {
            if maxValues[i] < minVal {
                minVal = maxValues[i]
            }
        }
        
        return minVal
    }
    
    func sumOfDigits(forN n: Int) -> Int {
        let digits = "\(n)".map({ Int("\($0)") ?? 0 })
        var sum = 0
        for d in digits {
            sum += d
        }
        return sum
    }
    
    func getDivisors(forN n: Int) -> [Int] {
        var divs = [Int]()
        var i = 1
        while i * i <= n {
            if n % i == 0 {
                if i * i != n {
                    divs.append(i)
                }
                divs.append(n / i)
            }
            
            i += 1
        }
        
        return divs.sorted()
    }
}
