//
//  DivisibleSumPairsTest.swift
//  Hakerrank
//
//  Created on 2/14/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DivisibleSumPairsTest: PracticeTest {
    let k = 3
    let array = [1, 3, 2, 6, 1, 2]
    
    override func preExecuteAction() {
        print("Divisible Sum Pairs")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("k = \(k)")
        print("Pairs count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkPairs(array, k: k)
    }
    
    func checkPairs(_ array: [Int], k: Int) -> Int {
        var sum = 0
        for i in 0..<array.count - 1 {
            let a = array[i]
            for j in (i + 1)..<array.count {
                let b = array[j]
                let mod = (a + b) % k
                if mod == 0 {
                    sum += 1
                }
            }
        }
        
        return sum
    }
}
