//
//  MinimumDistancesTest.swift
//  Hakerrank
//
//  Created on 3/2/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MinimumDistancesTest: PracticeTest {
    let array = [7, 1, 3, 4, 1, 7] // -> 3
    
    override func preExecuteAction() {
        print("Minimum Distances")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Min distance: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array)
    }
    
    func processArray(_ array: [Int]) -> Int {
        var stat = [Int: Int]()
        var minDist = array.count * 2
        for i in 0..<array.count {
            if stat[array[i]] == nil {
                stat[array[i]] = i
            } else {
                let d = i - stat[array[i]]!
                if d < minDist {
                    minDist = d
                }
                if d == 1 {
                    return 1
                }
                stat[array[i]] = i
            }
        }
        
        if minDist > array.count {
            return -1
        }
        
        return minDist
    }
}
