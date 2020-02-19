//
//  ArmyGameTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ArmyGameTest: PracticeTest {
    let m = 5
    let n = 4
    
    override func preExecuteAction() {
        print("Army Game")
    }
    
    override func postExecuteAction() {
        print("N = \(n), M = \(m)")
        print("Drops count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findDropsCount(m, n: n)
    }
    
    func findDropsCount(_ m: Int, n: Int) -> Int {
        let widthCount = m % 2 == 0 ? m / 2 : m / 2 + 1
        let heightCount = n % 2 == 0 ? n / 2 : n / 2 + 1
        
        return widthCount * heightCount
    }
}
