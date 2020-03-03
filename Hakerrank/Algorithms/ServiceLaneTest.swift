//
//  ServiceLaneTest.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ServiceLaneTest: PracticeTest {
    let array = [2, 3, 1, 2, 3, 2, 3, 3]
    let cases = [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]]
    
    override func preExecuteAction() {
        print("Service Lane")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Cases:")
        for c in cases {
            print("\t\(c)")
        }
        print("Result: \(result ?? "")")
    }
    
    struct Range {
        var from = 0
        var to = 0
        var min = 0
        var num = 0
        
        mutating func applyVal(_ num: Int) {
            if min == 0 {
                min = num
            } else if num < min {
                min = num
            }
        }
    }
    
    override func execute() -> Any? {
        return processArray(array, forCases: cases)
    }
    
    func processArray(_ array: [Int], forCases cases: [[Int]]) -> [Int] {
        var ranges = [Range]() //.sorted(by: { $0.from < $1.from })
        for i in 0..<cases.count {
            let range = Range(from: cases[i][0], to: cases[i][1], min: 0, num: i)
            ranges.append(range)
        }
        ranges.sort(by: { $0.from < $1.from })

        var currentRanges = [Range]()
        for i in 0..<array.count {
            for j in 0..<currentRanges.count {
                currentRanges[j].applyVal(array[i])
            }
            
            var startedRanges = ranges.filter({ $0.from == i })
            for j in 0..<startedRanges.count {
                startedRanges[j].applyVal(array[i])
                currentRanges.append(startedRanges[j])
            }
            
            let endedRanges = currentRanges.filter({ $0.to == i })
            for range in endedRanges {
                if let index = ranges.firstIndex(where: { $0.num == range.num }) {
                    ranges[index].min = range.min
                }
            }
            currentRanges.removeAll(where: { endedRanges.map({ $0.num }).contains($0.num) })
        }
        
        let result = ranges.sorted(by: { $0.num < $1.num }).map({ $0.min })
        
        return result
    }
}
