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
    
    struct Interval {
        var num = 0
        var start = 0
        var end = 0
        var val = 0
    }
    
    func applyManipulations(n: Int, queries: [[Int]]) -> Int {
        var intervals = [Interval]()
        var n = 0
        for q in queries {
            let interval = Interval(num: n, start: q[0], end: q[1], val: q[2])
            intervals.append(interval)
            n += 1
        }
        intervals.sort(by: { $0.start < $1.start })
        
        var currentIntervals = [Interval]()
        var max = 0
        for interval in intervals {
            let outerIntervals = currentIntervals.filter({ $0.end < interval.start })
            for outInt in outerIntervals {
                if let index = currentIntervals.firstIndex(where: { $0.num == outInt.num }) {
                    currentIntervals.remove(at: index)
                }
            }
            currentIntervals.append(interval)
            
            var currentSum = 0
            for curInt in currentIntervals {
                currentSum += curInt.val
            }
            
            if currentSum > max {
                max = currentSum
            }
        }
        
        return max
    }
    
    // not optimal solution, need to improve
    /*func applyManipulations(n: Int, queries: [[Int]]) -> Int {
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
    }*/
}
