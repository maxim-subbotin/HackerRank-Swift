//
//  SparseArraysTest.swift
//  Hakerrank
//
//  Created on 2/19/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SparseArraysTest: PracticeTest {
    //let array = ["aba", "baba", "aba", "xzxb"]
    //let queries = ["aba", "xzxb", "ab"] // [2, 1, 0]
    
    let array = ["abcde", "sdaklfj", "asdjf", "na", "basdn", "sdaklfj", "asdjf", "na", "asdjf", "na", "basdn", "sdaklfj", "asdjf"]
    let queries = ["abcde", "sdaklfj", "asdjf", "na", "basdn"]
    
    override func preExecuteAction() {
        print("Sparse Arrays")
    }
    
    override func postExecuteAction() {
        print("Strings: \(array)")
        print("Queries: \(queries)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findQueries(array, queries: queries)
    }
    
    func findQueries(_ strings: [String], queries: [String]) -> [Int] {
        var lengthDict = [Int: [String]]()
        for string in strings {
            if lengthDict[string.count] == nil {
                lengthDict[string.count] = [string]
            } else {
                lengthDict[string.count]?.append(string)
            }
        }
        
        var results = [Int]()

        for query in queries {
            var sum = 0
            if let strs = lengthDict[query.count] {
                for str in strs {
                    if str == query {
                        sum += 1
                    }
                }
            }
            results.append(sum)
        }

        return results
    }
    
}
