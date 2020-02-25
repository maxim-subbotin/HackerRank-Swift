//
//  NewYearChaosTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class NewYearChaosTest: PracticeTest {
    //let array = [2, 1, 5, 3, 4] // -> 3
    //let array = [2, 5, 1, 3, 4] // -> Chaos
    let array = [1, 2, 5, 3, 7, 8, 6, 4] // -> 7
    
    override func preExecuteAction() {
        print("New Year Chaos")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Count of bribes: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processQueue(array)
    }
    
    func processQueue(_ array: [Int]) -> Int {
        var positiveSum = 0
        var negativeSum = 0
        for i in 0..<array.count {
            let val = i + 1 - array[i]
            /*if abs(val) > 2 {
                return Int.min
            }*/
            if val > 0 {
                positiveSum += val
            }
            if val < 0 {
                negativeSum += val
            }
        }
        
        if negativeSum == -positiveSum {
            return positiveSum
        }
        
        return Int.min
    }
}
