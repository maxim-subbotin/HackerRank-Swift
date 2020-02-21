//
//  BetweenTwoSetsTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BetweenTwoSetsTest: PracticeTest {
    //let array1 = [2, 6]
    //let array2 = [24, 36]
    
    //let array1 = [2, 4]
    //let array2 = [16, 32, 96]
    
    //let array1 = [51]
    //let array2 = [50] // count = 0
    
    let array1 = [100, 99, 98, 97, 96, 95, 94, 93, 92, 91]
    let array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // count = 0
    
    let primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

    
    override func preExecuteAction() {
        print("Between Two Sets")
    }
    
    override func postExecuteAction() {
        print("Array #1: \(array1)")
        print("Array #2: \(array2)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array1: array1, array2: array2)
    }
    
    func processArray(array1: [Int], array2: [Int]) -> Int {
        var minValue = array1.first!
        for i in 1..<array1.count {
            minValue = max(array1[i], minValue)
        }
        var maxValue = array2.first!
        for i in 1..<array2.count {
            maxValue = min(array2[i], maxValue)
        }
        
        if minValue > maxValue {
            return 0
        }
        
        var results = [Int]()
        for i in minValue...maxValue {
            var isResult = true
            for j in array1 {
                if i % j != 0 {
                    isResult = false
                    break
                }
            }
            if !isResult {
                continue
            }
            for j in array2 {
                if j % i != 0 {
                    isResult = false
                    break
                }
            }
            if isResult {
                results.append(i)
            }
        }
        
        return results.count
    }
    
    func primeFactors(forNumber n: Int, level: Int) -> [Int] {
        if primeNumbers.contains(n) {
            return [n]
        }
        return [1]
    }
}
