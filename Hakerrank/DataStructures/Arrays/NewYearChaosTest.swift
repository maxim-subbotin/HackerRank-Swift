//
//  NewYearChaosTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class NewYearChaosTest: PracticeTest {
    let array = [2, 1, 5, 3, 4] // -> 3
    //let array = [2, 5, 1, 3, 4] // -> Chaos
    //let array = [1, 2, 5, 3, 7, 8, 6, 4] // -> 7
    
    override func preExecuteAction() {
        print("New Year Chaos")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Count of bribes: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processQueue(array)
    }
    
    func processQueue(_ array: [Int]) -> Int {
        for i in 0..<array.count {
            let val = array[i] - (i + 1)
            if val > 2 {
                return Int.min
            }
        }
        
        var inversionCount = 0
        _ = mergeSort(array, count: &inversionCount) // O = N * log(N)
        
        return inversionCount
        
        // O = N * N
        /*var inversionCount = 0
        for i in 0..<array.count {
            let val = array[i] - (i + 1)
            if val > 2 {
                return Int.min
            }
            for j in (i + 1)..<array.count {
                if array[i] > array[j] {
                    inversionCount += 1
                }
            }
        }

        return inversionCount*/
    }
    
    func mergeSort(_ arr: [Int], count: inout Int) -> [Int] {
        if arr.count == 1 {
            return arr
        }
        let mid = arr.count / 2
        var newArray = [Int]()
        
        var array1 = [Int]()
        var array2 = [Int]()
        for i in 0..<arr.count {
            if i < mid {
                array1.append(arr[i])
            } else {
                array2.append(arr[i])
            }
        }
        
        merge(array1: mergeSort(array1, count: &count), array2: mergeSort(array2, count: &count), result: &newArray, count: &count)
        
        return newArray
    }
    
    func merge(array1: [Int], array2: [Int], result: inout [Int], count: inout Int) {
        var a = 0
        var b = 0
        result = Array(repeating: 0, count: array1.count + array2.count)
        for i in 0..<result.count {
            if b < array2.count && a < array1.count {
                if array1[a] > array2[b] {
                    result[i] = array2[b]
                    count = count + (array1.count - a)
                    b += 1
                } else {
                    result[i] = array1[a]
                    a += 1
                }
            } else if b < array2.count {
                result[i] = array2[b]
                b += 1
            } else {
                result[i] = array1[a]
                a += 1
            }
        }
    }
}
