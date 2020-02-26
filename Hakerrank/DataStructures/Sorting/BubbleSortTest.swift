//
//  BubbleSortTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BubbleSortTest: PracticeTest {
    //var array = [6, 4, 1] // 3
    //var array = [1, 2, 3] // 0
    var array = [4, 2, 3, 1] // 5
    
    override func preExecuteAction() {
        print("Sorting: Bubble Sort")
    }
    
    override func postExecuteAction() {
        print("Sorted array: \(array)")
        print("Swap count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return bubbleSort(&array)
    }
    
    func bubbleSort(_ array: inout [Int]) -> Int {
        var count = 0
        
        for _ in 0..<array.count {
            for j in 0..<array.count - 1 {
                if array[j] > array[j + 1] {
                    count += 1
                    let a = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = a
                }
            }
        }
        
        return count
    }
}
