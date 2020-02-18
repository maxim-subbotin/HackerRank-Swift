//
//  MiniMaxTest.swift
//  Hakerrank
//
//  Created on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MiniMaxTest: PracticeTest {
    var array = [1, 2, 3, 4, 5]
    
    override func preExecuteAction() {
        print("Mini Max")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Min: \((result as! MiniMax).min)")
        print("Max: \((result as! MiniMax).max)")
    }
    
    override func execute() -> Any? {
        return miniMax(array)
    }
    
    struct MiniMax {
        var min: Int
        var max: Int
    }
    
    func miniMax(_ array: [Int]) -> MiniMax {
        var minValue = array[0]
        var maxValue = array[0]
        var sum = array[0]
        for i in 1..<array.count {
            minValue = min(minValue, array[i])
            maxValue = max(maxValue, array[i])
            sum += array[i]
        }
        return MiniMax(min: sum - maxValue, max: sum - minValue)
    }
}
