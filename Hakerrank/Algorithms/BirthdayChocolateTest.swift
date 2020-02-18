//
//  BirthdayChocolateTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BirthdayChocolateTest: PracticeTest {
    // [2, 2, 1, 3, 2], d = 4, m = 2 -> 2
    /*let array = [2, 2, 1, 3, 2]
    let day = 4
    let month = 2*/

    // [1, 2, 1, 3, 1], d = 3, m = 2 -> 2
    /*let array = [1, 2, 1, 3, 1]
    let day = 3
    let month = 2*/
    
    // [1, 1, 1, 1, 1, 1], d = 3, m = 2 -> 0
    /*let array = [1, 1, 1, 1, 1]
    let day = 3
    let month = 2*/
    
    // [2, 5, 1, 3, 4, 4, 3, 5, 1, 1, 2, 1, 4, 1, 3, 3, 4, 2, 1], d = 18, m = 7 -> 3
    let array = [2, 5, 1, 3, 4, 4, 3, 5, 1, 1, 2, 1, 4, 1, 3, 3, 4, 2, 1]
    let day = 18
    let month = 7
    
    // [4], d = 4, m = 1 -> 1
    /*let array = [4]
    let day = 4
    let month = 1*/
    
    var choices = [[Int]]()
    
    override func preExecuteAction() {
        print("Birthday Chocolate")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Day: \(day), month: \(month)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return chocolateSplit(array, day: day, month: month)
    }
    
    func chocolateSplit(_ array: [Int], day: Int, month: Int) -> Int {
        if array.count == month {
            let sum = array.reduce(0, +)
            return sum == day ? 1 : 0
        }
        
        var count = 0
        for i in 0...array.count - month {
            var sum = 0
            for j in i..<i + month {
                sum += array[j]
            }
            if sum == day {
                count += 1
            }
        }
        return count
    }
}

