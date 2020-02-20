//
//  ArrayManipulationTest.swift
//  Hakerrank
//
//  Created on 2/19/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ArrayManipilationTest: PracticeTest {
    //let n = 10
    //let queries = [[1, 5, 3],
    //               [4, 8, 7],
    //               [6, 9, 1]] // max = 10
    
    let n = 5
    let queries = [[1, 2, 100],
                   [2, 5, 100],
                   [3, 4, 100]] // max = 200
    
    override func preExecuteAction() {
        print("Array Manipulation")
    }
    
    override func postExecuteAction() {
        print("Queries")
        print("\ta\t\tb\t\tc")
        for row in queries {
            print("\t\(row[0])\t\t\(row[1])\t\t\(row[2])")
        }
        print("Max value: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return applyManipulations(n: n, queries: queries)
    }
    
    // not optimal solution, need to improve
    func applyManipulations(n: Int, queries: [[Int]]) -> Int {
        var array = Array(repeating: 0, count: n)
        for i in 0..<queries.count {
            let from = queries[i][0] - 1
            let to = queries[i][1] - 1
            let s = queries[i][2]
            for j in from...to {
                array[j] += s
            }
        }
        
        var maxValue = 0
        for i in 0..<array.count {
            maxValue = max(maxValue, array[i])
        }
        
        return maxValue
    }
}
