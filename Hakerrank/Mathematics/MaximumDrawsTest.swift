//
//  MaximumDrawsTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MaximumDrawsTest: PracticeTest {
    let n = 2
    
    override func preExecuteAction() {
        print("Maximun Draw")
    }
    
    override func postExecuteAction() {
        print("Pairs: \(n)")
        print("Draws: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return casesCount(n)
    }
    
    func casesCount(_ n: Int) -> Int {
        return n + 1
    }
}
