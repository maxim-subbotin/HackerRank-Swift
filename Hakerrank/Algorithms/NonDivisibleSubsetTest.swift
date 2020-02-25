//
//  NonDivisibleSubsetTest.swift
//  Hakerrank
//
//  Created on 2/24/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class NonDivisibleSubsetTest: PracticeTest {
    let array = [19, 10, 12, 10, 24, 25, 22]
    let k = 4 // -> 3
    
    //let array = [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436]
    //let k = 7 // -> 11
    
    //let array = [1, 7, 2, 4]
    //let k = 3 // -> 3
    
    override func preExecuteAction() {
        print("Non-Divisible Subset")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("K = \(k)")
        print("Subset size: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findSubset(array, k: k)
    }
    
    func findSubset(_ array: [Int], k: Int) -> Int {
        var arr = [[Int]]()
        var divArr = [[Int]]()
        for i in 0..<array.count {
            for j in (i + 1)..<array.count {
                let sum = array[i] + array[j]
                if !(sum % k == 0) {
                    arr.append([array[i], array[j]])
                } else {
                    divArr.append([array[i], array[j]])
                }
            }
        }

        var numbers = Set<Int>()
        for i in 0..<arr.count {
            numbers.insert(arr[i][0])
            numbers.insert(arr[i][1])
        }
        
        //let mods = array.map({ $0 % k }).sorted()
        
        //var results = [Int]()
        /*for mod in mods {
            var needToAdd = true
            for i in 0..<results.count {
                if (mod + results[i]) % k == 0 {
                    needToAdd = false
                    break
                }
            }
            if needToAdd {
                results.append(mod)
            }
        }*/

        return numbers.count
    }
}
