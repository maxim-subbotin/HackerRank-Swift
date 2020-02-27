//
//  SherlockAndMovingTilesTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SherlockAndMovingTilesTest: PracticeTest {
    let l = 10
    let s1 = 1
    let s2 = 2
    let queries = [50, 100]
    
    override func preExecuteAction() {
        print("Sherlock and Moving Tiles")
    }
    
    override func postExecuteAction() {
        print("L = \(l), S1 = \(s1), S2 = \(s2)")
        print("Queries: \(queries)")
        print("Times: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return time(l: l, s1: s1, s2: s2, queries: queries)
    }
    
    func time(l: Int, s1: Int, s2: Int, queries: [Int]) -> [Double] {
        var array = [Double]()
        for q in queries {
            if q > l * l {
                array.append(0)
            } else {
                let p1 = sqrt(2.0) * Double(l) - sqrt(2.0 * Double(q))
                let p2 = Double(abs(s1 - s2))
                let t = p1 / p2
                let str = String(format: "%.4f", t)
                array.append(Double(str) ?? 0)
            }
        }
        
        return array
    }
}
