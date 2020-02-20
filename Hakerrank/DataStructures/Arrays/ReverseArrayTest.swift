//
//  ReverseArrayTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ReverseArrayTest: PracticeTest {
    let array = [1, 2, 3, 4, 5, 6]
    
    override func preExecuteAction() {
        print("Reverse array")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Reversed: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return reverse(array)
    }
    
    func reverse(_ array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        }
        
        var arr = array
        
        var startIndex = 0
        var endIndex = array.count - 1
        while startIndex < endIndex {
            let temp = arr[startIndex]
            arr[startIndex] = arr[endIndex]
            arr[endIndex] = temp
            
            startIndex += 1
            endIndex -= 1
        }
        
        return arr
    }
}
