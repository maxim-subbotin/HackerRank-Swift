//
//  EqualizeTheArrayTest.swift
//  Hakerrank
//
//  Created on 2/25/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class EqualizeTheArrayTest: PracticeTest {
    let array = [3, 3, 2, 1, 3] // -> 2
    
    override func preExecuteAction() {
        print("Equalize the Array")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return equalize(array)
    }
    
    func equalize(_ array: [Int]) -> Int {
        var stat = [Int:Int]()
        
        for i in 0..<array.count {
            if stat[array[i]] == nil {
                stat[array[i]] = 1
            } else {
                stat[array[i]]! += 1
            }
        }
        
        var maxVal = 0
        for key in stat.keys {
            maxVal = max(maxVal, stat[key]!)
        }
        
        return array.count - maxVal
    }
}
