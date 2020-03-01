//
//  BeautifulTripletsTest.swift
//  Hakerrank
//
//  Created on 3/1/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BeautifulTripletsTest: PracticeTest {
    /*let array = [2, 2, 3, 4, 5]
    let d = 1*/
    
    let array = [1, 2, 4, 5, 7, 8, 10]
    let d = 3
    
    override func preExecuteAction() {
        print("Beautiful Triplets")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array, d: d)
    }
    
    func processArray(_ array: [Int], d: Int) -> Int {
        var count = 0
        
        var triples = [[Int]]()
        for i in 0..<array.count {
            let a = array[i]
            triples.append([a])
            var i = 0
            var forDelete = [Int]()
            while i < triples.count {
                var arr = triples[i]
                if arr.count == 1 {
                    if arr[0] + d == a {
                        arr.append(a)
                        triples[i] = arr
                    }
                } else if arr.count == 2 {
                    if arr[1] + d == a {
                        arr.append(a)
                        count += 1
                        forDelete.append(i)
                    }
                }
                i += 1
            }
            
            if forDelete.count > 0 {
                var newSet = [[Int]]()
                for i in 0..<triples.count {
                    if !forDelete.contains(i) {
                        newSet.append(triples[i])
                    }
                }
                triples = newSet
            }
        }
        
        return count
    }
}
