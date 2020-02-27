//
//  SummingNSeriesTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SummingNSeriesTest: PracticeTest {
    //let n = 2 // -> 4
    let n = 4582 // -> 20994724
    
    override func preExecuteAction() {
        print("Summing the N series")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("mod = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return sum(n)
    }
    
    func sum(_ n: Int) -> Int {
        return n * n % 1000000007
    }
}
