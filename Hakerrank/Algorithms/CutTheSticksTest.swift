//
//  CutTheSticksTest.swift
//  Hakerrank
//
//  Created on 2/24/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CutTheSticksTest: PracticeTest {
    //let array = [5, 4, 4, 2, 2, 8]
    let array = [1, 2, 3, 4, 3, 3, 2, 1]
    
    override func preExecuteAction() {
        print("Cut the sticks")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return cut(sticks: array)
    }
    
    func cut(sticks array: [Int]) -> [Int] {
        var res = [Int]()
        var arr = array
        res.append(array.count)
        
        var min = array.min()
        while min != nil {
            for i in 0..<arr.count {
                arr[i] = max(0, arr[i] - min!)
            }
            let count = arr.filter({ $0 > 0 }).count
            if count > 0 {
                res.append(count)
            }
            
            min = arr.filter({ $0 > 0 }).min()
        }
        
        return res
    }
}
