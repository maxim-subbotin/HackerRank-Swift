//
//  VeryBigSumTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class VeryBigSumTest: PracticeTest {
    let array = [100000001, 100000002, 100000003, 100000004, 100000005]
    
    override func preExecuteAction() {
        print("Very Big Sum")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Sum: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return sum(array)
    }
    
    func sum(_ array: [Int]) -> Int {
        var sum = 0
        for a in array {
            sum += a
        }
        return sum
    }
}
