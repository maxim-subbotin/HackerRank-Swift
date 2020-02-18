//
//  BreakingTheRecordsTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BreakingTheRecordsTest: PracticeTest {
    let array = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]
    // [3, 4, 21, 36, 10, 28, 35, 5, 24, 42] -> [4, 0]
    // [10, 5, 20, 20, 4, 5, 2, 25, 1] -> [2, 4]
    
    override func preExecuteAction() {
        print("Breaking the Records")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Best score increasing: \((result as! ScoreData).highestIncreasings)")
        print("Worst score increasing: \((result as! ScoreData).lowestDecreasings)")
    }
    
    override func execute() -> Any? {
        return processData(array)
    }
    
    struct ScoreData {
        var highestIncreasings = 0
        var lowestDecreasings = 0
    }
    
    func processData(_ array: [Int]) -> ScoreData {
        var minValue = array[0]
        var maxValue = array[0]
        var increasingCount = 0
        var decreasingCount = 0
        for i in 1..<array.count {
            if array[i] < minValue {
                minValue = array[i]
                decreasingCount += 1
            }
            if array[i] > maxValue {
                maxValue = array[i]
                increasingCount += 1
            }
        }
        
        return ScoreData(highestIncreasings: increasingCount, lowestDecreasings: decreasingCount)
    }
}
