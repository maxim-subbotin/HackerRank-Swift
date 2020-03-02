//
//  FraudulentActivityNotificationsTest.swift
//  Hakerrank
//
//  Created on 3/2/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class FraudulentActivityNotificationsTest: PracticeTest {
    //let array = [2, 3, 4, 2, 3, 6, 8, 4, 5]
    //let d = 5   // -> 2
    
    //let array = [1, 2, 3, 4, 4]
    //let d = 4 // -> 0
    
    let array = [10, 20, 30, 40, 50]
    let d = 3 // -> 1

    
    override func preExecuteAction() {
        print("Fraudulent Activity Notifications")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("D: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processArray(array, d: d)
    }
    
    func processArray(_ array: [Int], d: Int) -> Int {
        var count = 0
        
        let isOdd = d % 2 == 1
        let a = isOdd ? (d / 2) : (d / 2 - 1)
        let b = isOdd ? a : d / 2
        
        // 1 cases were failed
        var medianArray = [Int]()
        for i in 0..<array.count {
            if medianArray.count < d {
                insert(inArray: &medianArray, value: array[i])
            } else {
                let m = isOdd ? medianArray[a] * 2 : medianArray[a] + medianArray[b]
                    //median(forArray: medianArray)
                if array[i] >= m {
                    count += 1
                }
                let prevValue = array[i - d]
                remove(fromArray: &medianArray, value: prevValue)
                insert(inArray: &medianArray, value: array[i])
            }
        }
        
        return count
    }
    
    func remove(fromArray array: inout [Int], value: Int) {
        var leftIndex = 0
        var rightIndex = array.count
        while leftIndex < rightIndex {
            let mid = leftIndex + (rightIndex - leftIndex) / 2
            if array[mid] == value {
                array.remove(at: mid)
                return
            } else if array[mid] < value {
                leftIndex = mid + 1
            } else {
                rightIndex = mid
            }
        }
    }
    
    func insert(inArray array: inout [Int], value: Int) {
        if array.count == 0 {
            array.append(value)
            return
        }
        
        if value <= array.first! {
            array.insert(value, at: 0)
            return
        }
        if value >= array.last! {
            array.append(value)
            return
        }
        
        var leftIndex = 0
        var rightIndex = array.count
        while leftIndex < rightIndex {
            let mid = leftIndex + (rightIndex - leftIndex) / 2
            if array[mid] == value {
                array.insert(value, at: mid)
                return
            } else if array[mid] < value {
                leftIndex = mid + 1
            } else {
                rightIndex = mid
            }
        }
        array.insert(value, at: leftIndex)
    }
    
    func median(forArray array: [Int]) -> Double {
        if array.count % 2 == 1 {
            return Double(array[array.count / 2])
        } else {
            let a = array[array.count / 2 - 1]
            let b = array[array.count / 2]
            return Double(a + b) * 0.5
        }
    }
}

