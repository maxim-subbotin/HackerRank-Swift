//
//  PickingNumbersTest.swift
//  Hakerrank
//
//  Created on 2/16/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class PickingNumbersTest: PracticeTest {
    //let array = [4, 6, 5, 3, 3, 1] // count = 3
    //let array = [1, 2, 2, 3, 1, 2] // count = 5
    let array = [1, 1, 2, 2, 4, 4, 5, 5, 5] // count = 5
    
    override func preExecuteAction() {
        print("Picking Numbers")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Sequence count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array)
    }
    
    func processArray(_ array: [Int]) -> Int {
        var stat = [Int: Int]()
        var maxCount = 0
        for i in 0..<array.count {
            if stat[array[i]] != nil {
                continue
            } else {
                var count = 0
                for j in 0..<array.count {
                    if array[j] == array[i] || array[j] == array[i] + 1 {
                        count += 1
                    }
                }
                stat[array[i]] = count
                maxCount = max(count, maxCount)
            }
        }
        
        return maxCount
    }
}
