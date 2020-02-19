//
//  MinimumHeightTriangleTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MinimumHeightTriangleTest: PracticeTest {
    let b = 17
    let a = 100
    
    override func preExecuteAction() {
        print("Minimum Height Triangle")
    }
    
    override func postExecuteAction() {
        print("A = \(a), B = \(b)")
        print("Height: \(result ?? "")")
    }
    
    
    override func execute() -> Any? {
        return height(forArea: a, andBase: b)
    }
    
    func height(forArea a: Int, andBase b: Int) -> Int {
        let d = Double(2 * a) / Double(b)
        return Int(ceil(d))
    }
}
