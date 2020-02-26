//
//  MinimumSwaps2Test.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MinimumSwaps2Test: PracticeTest {
    //let array = [7, 1, 3, 2, 4, 5, 6] // -> 5
    //let array = [4, 3, 1, 2] // -> 3
    //let array = [2, 3, 4, 1, 5] // -> 3
    //let array = [1, 3, 5, 2, 4, 6, 7]
    let array = [2, 31, 1, 38, 29, 5, 44, 6, 12, 18,
                 39, 9, 48, 49, 13, 11, 7, 27, 14, 33,
                 50, 21, 46, 23, 15, 26, 8, 47, 40, 3,
                 32, 22, 34, 42, 16, 41, 24, 10, 4, 28,
                 36, 30, 37, 35, 20, 17, 45, 43, 25, 19] // -> 46
    
    // 99984
    
    override func preExecuteAction() {
        print("Minimum Swaps 2")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Swaps count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array)
    }
    
    func processArray(_ array: [Int]) -> Int {
        var count = 0
        
        var arr = array
        
        let needToContinue = true
        var prevFrom = 0
        while needToContinue {
            // find first position for swapping
            var from = prevFrom
            while arr[from] == from + 1 {
                from += 1
                if from >= arr.count {
                    break
                }
            }
            if from >= arr.count - 1 {
                break
            }
            
            // find current minimal value & second position for swapping
            let minValue = from
            var to = from + 1
            while arr[to] != minValue + 1 {
                to += 1
            }
            
            // swap
            let a = arr[from]
            arr[from] = arr[to]
            arr[to] = a
            count += 1
            
            prevFrom = from + 1
        }
        
        
        return count
    }
}
