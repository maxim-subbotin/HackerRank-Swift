//
//  ArrayManipulationTest.swift
//  Hakerrank
//
//  Created on 2/19/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ArrayManipulationTest: PracticeTest {
    //let n = 10
    //let queries = [[1, 5, 3],
    //               [4, 8, 7],
    //               [6, 9, 1]] // max = 10
    
    var n = 5
    var queries = [[1, 2, 100],
                   [2, 5, 100],
                   [3, 4, 100]] // max = 200
    
    /*var n = 10
    var queries = [[2, 6, 8],
    [3, 5, 7],
    [1, 8, 1],
    [5, 9, 15]] // max = 31
    */
    
    /*var n = 4
    var queries = [[2, 3, 603],
    [1, 1, 286],
    [4, 4, 882]] // max = 882
    */
    
    //max from data file: 2490686975
    
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
        loadData()
        return applyManipulations(n: n, queries: queries)
    }
    
    struct Interval {
        var num = 0
        var start = 0
        var end = 0
        var val = 0
    }
    
    struct Point {
        var x = 0
        var val = 0
    }
    
    func applyManipulations(n: Int, queries: [[Int]]) -> Int {
        var dict = [Int:Int]()
        for query in queries {
            if dict[query[0]] == nil {
                dict[query[0]] = query[2]
            } else {
                dict[query[0]]! += query[2]
            }
            if dict[query[1] + 1] == nil {
                dict[query[1] + 1] = -query[2]
            } else {
                dict[query[1] + 1]! -= query[2]
            }
        }
        
        var maxValue = 0
        var sum = 0
        for point in dict.keys.sorted() {
            sum += dict[point]!
            if sum > maxValue {
                maxValue = sum
            }
        }
        
        return maxValue
    }
    
    func loadData() {
        let path = "/Volumes/Data/GitHub/HackerRank-Swift/Hakerrank/Data/array_manipulation_data.txt"
        do {
            n = 10000000
            queries = [[Int]]()
            
            let data = try String(contentsOfFile: path, encoding: .utf8)
            let strings = data.components(separatedBy: .newlines)
            for i in 1..<strings.count {
                let parts = strings[i].components(separatedBy: " ")
                let row = [Int(parts[0])!, Int(parts[1])!, Int(parts[2])!]
                queries.append(row)
            }
        } catch {
            print(error)
        }

    }
}
