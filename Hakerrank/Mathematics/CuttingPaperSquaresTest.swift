//
//  CuttingPaperSquaresTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CuttingPaperSquareTest: PracticeTest {
    let n = 3
    let m = 2
    
    override func preExecuteAction() {
        print("Cutting Paper Squares")
    }
    
    override func postExecuteAction() {
        print("N = \(n), M = \(m)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return split(n: n, m: m)
    }
    
    func split(n: Int, m: Int) -> Int {
        return n * m - 1
    }
}
