//
//  LisaWorkbookTest.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class LisaWorkbookTest: PracticeTest {
    let k = 3
    let array = [4, 2, 6, 1, 10] // -> 4
    
    //let k = 5
    //let array = [3, 8, 15, 11, 14, 1, 9, 2, 24, 31] //-> 8
    
    override func preExecuteAction() {
        print("Lisa's Workbook")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("K = \(k)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array, k: k)
    }
    
    func processArray(_ array: [Int], k: Int) -> Int {
        var count = 0
        var pageNum = 0
        for i in 0..<array.count {
            pageNum += 1
            
            let taskCount = array[i]
            var p = taskCount
            var from = 1
            var to = min(k, taskCount)
            if from...to ~= pageNum {
                count += 1
            }
            p -= k
            while p > 0 {
                p -= k
                pageNum += 1
                from = min(taskCount, from + k)
                to = min(taskCount, to + k)
                if from == to && from == pageNum {
                    count += 1
                } else if from < to {
                    if from...to ~= pageNum {
                        count += 1
                    }
                }
            }
        }
        return count
    }
}
