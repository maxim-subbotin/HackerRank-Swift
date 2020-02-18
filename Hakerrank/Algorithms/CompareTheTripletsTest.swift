//
//  CompareTheTripletsTest.swift
//  Hakerrank
//
//  Created on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CompareTheTripletsTest: PracticeTest {
    let aliceArray = [17, 28, 16]
    let bobArray = [99, 16, 8]
    
    private enum Names: Int {
        case Alice = 0
        case Bob = 1
    }
    
    override func preExecuteAction() {
        print("Compare the triplets")
    }
    
    override func postExecuteAction() {
        print("Alice: \(aliceArray)")
        print("Bob: \(bobArray)")
        print("Alice vs Bob: \((result as! [Int])[Names.Alice.rawValue]) : \((result as! [Int])[Names.Bob.rawValue])")
    }
    
    override func execute() -> Any? {
        return compareTriplets(firstArray: aliceArray, secondArray: bobArray)
    }
    
    func compareTriplets(firstArray array1: [Int], secondArray array2: [Int]) -> [Int]? {
        if array1.count != array2.count {
            return nil
        }
        
        var results = [0, 0]
        var n = 0
        while n < array1.count {
            let s = (array1[n] - array2[n]).signum()
            results[s > 0 ? Names.Alice.rawValue : Names.Bob.rawValue] += abs(s)
            n += 1
        }
        
        return results
    }
}
