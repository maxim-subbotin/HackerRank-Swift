//
//  LeftRotationTest.swift
//  Hakerrank
//
//  Created on 2/19/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class LeftRotationTest: PracticeTest {
    let array = [1, 2, 3, 4, 5] // [5, 1, 2, 3, 4]
    let rotationCount = 4
    
    //let array = [1, 2, 3] // [3, 1, 2]
    //let rotationCount = 5
    //1: 2 3 1
    //2: 3 1 2
    //3: 1 2 3
    //4: 2 3 1
    //5: 3 1 2
    
    override func preExecuteAction() {
        print("Left Rotation")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Rotation count: \(rotationCount)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return leftRotate(array, times: rotationCount)
    }
    
    func leftRotate(_ array: [Int], times n: Int) -> [Int] {
        var rotatedArray = Array(repeating: 0, count: array.count)
        for i in 0..<array.count {
            let index = i - n
            if index < 0 {
                if abs(index) == array.count {
                    rotatedArray[0] = array[i]
                } else {
                    let k = array.count - abs(index) % array.count
                    rotatedArray[k] = array[i]
                }
            } else {
                rotatedArray[index] = array[i]
            }
        }
        return rotatedArray
    }
}
