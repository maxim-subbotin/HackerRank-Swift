//
//  MigratoryBirdsTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/14/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MigratoryBirdsTest: PracticeTest {
    //let array = [1, 4, 4, 4, 5, 3]
    let array = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]
    
    override func preExecuteAction() {
        print("Migratory Birds")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkFrequency(array)
    }
    
    struct BirdStat {
        var birdCode = 0
        var count = 0
    }
    
    func checkFrequency(_ array: [Int]) -> Int {
        var statDict = [Int: Int]()
        
        for i in 0..<array.count {
            if statDict[array[i]] != nil {
                statDict[array[i]]! += 1
            } else {
                statDict[array[i]] = 1
            }
        }
        
        var array = statDict.keys.map({ BirdStat(birdCode: $0, count: statDict[$0]!) })
        array.sort(by: {
            if $0.count != $1.count {
                return $0.count > $1.count
            }
            return $0.birdCode < $1.birdCode
        })
        
        return array.first?.birdCode ?? 0
    }
}
