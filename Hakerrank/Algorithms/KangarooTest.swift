//
//  KangarooTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class KangarooTest: PracticeTest {
    let x1 = 21
    let v1 = 6
    let x2 = 47
    let v2 = 3
    //[2 1 1 2 -> YES]
    //[21 6 47 3 -> NO]
    //[43 2 70 2 -> NO]
    
    override func preExecuteAction() {
        print("Kangaroo")
    }
    
    override func postExecuteAction() {
        print("x1: \(x1), v1: \(v1)")
        print("x2: \(x2), v2: \(v2)")
        print("Possible to meet: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkIntersection(x1, v1: v1, x2: x2, v2: v2)
    }
    
    func checkIntersection(_ x1: Int, v1: Int, x2: Int, v2: Int) -> Bool {
        if v1 == v2 {
            if x1 == x2 {
                return true
            } else {
                return false
            }
        }
        
        let t = Double(x2 - x1) / Double(v1 - v2)
        if t <= 0 {
            return false
        }
        return floor(t) == t
    }
}
