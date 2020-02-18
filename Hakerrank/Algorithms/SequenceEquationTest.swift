//
//  SequenceEquationTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SequenceEquationTest: PracticeTest {
    //let array = [2, 3, 1] // [2, 3, 1]
    let array = [5, 2, 1, 3, 4] // [4, 2, 5, 1, 3]
    
    override func preExecuteAction() {
        print("Sequence Equation")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array)
    }
    
    func processArray(_ array: [Int]) -> [Int] {
        var result = [Int]()
        for i in 1...array.count {
            if let p1 = array.firstIndex(of: i) {
                if let p2 = array.firstIndex(of: p1 + 1) {
                    result.append(p2 + 1)
                }
            }
        }
        return result
    }
}
