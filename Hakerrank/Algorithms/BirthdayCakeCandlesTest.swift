//
//  BirthdayCakeCandlesTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BirthdayCakeCandlesTest: PracticeTest {
    let array = [3, 4, 6, 6, 3, 2, 1, 5, 6]
    
    override func preExecuteAction() {
        print("Birthday Cake Candles")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Candles: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findCandles(array)
    }
    
    func findCandles(_ array: [Int]) -> Int {
        if array.count == 0 {
            return 0
        }
        
        var maxValue = array[0]
        var maxCount = 1
        for i in 1..<array.count {
            if array[i] == maxValue {
                maxCount += 1
            } else if array[i] > maxValue {
                maxValue = array[i]
                maxCount = 1
            }
        }
        
        return maxCount
    }
}
