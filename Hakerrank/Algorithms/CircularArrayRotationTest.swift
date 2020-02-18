//
//  CircularArrayRotationTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CircularArrayRotationTest: PracticeTest {
    let array = [1, 2, 3]
    let k = 2
    let queries = [0, 1, 2] // 2, 3, 1
    
    //let array = [1, 2, 3, 4]
    //let k = 5
    //let queries = [0, 1, 2, 3] // 4, 1, 2, 3
    
    override func preExecuteAction() {
        print("Circular Array Rotation")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("K = \(k)")
        print("Queries: \(queries)")
        print("Results: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return circularRotation(array, rotationNumber: k, indexesToCheck: queries)
    }
    
    func circularRotation(_ array: [Int], rotationNumber k: Int, indexesToCheck queries: [Int]) -> [Int] {
        var results = [Int]()
        for index in queries {
            var r = index - k
            if r < 0 {
                let n = abs(r) / array.count
                r += ((n + 1) * array.count)
                if r >= array.count {
                    r -= array.count
                }
            }
            results.append(array[r])
        }
        return results
    }
    
}
