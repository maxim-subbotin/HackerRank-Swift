//
//  MarkAndToysTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MarkAndToysTest: PracticeTest {
    //let array = [1, 12, 5, 111, 200, 1000, 10]
    //let value = 50 // 4
    
    let array = [3, 7, 2, 9, 4]
    let value = 15 // 3

    
    override func preExecuteAction() {
        print("Mark and Toys")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Value: \(value)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array, value: value)
    }
    
    func processArray(_ array: [Int], value: Int) -> Int {
        var arr = array.filter({ $0 <= value })
        arr.sort()
        
        var sum = 0
        for i in 0..<arr.count {
            sum += arr[i]
            if sum > value {
                return i
            }
        }
        
        return arr.count
    }
}
