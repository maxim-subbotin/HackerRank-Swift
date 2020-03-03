//
//  HalloweenSale.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class HalloweenSaleTest: PracticeTest {
    let p = 20
    let d = 3
    let m = 6
    let s = 80
    
    override func preExecuteAction() {
        print("Halloween Sale")
    }
    
    override func postExecuteAction() {
        print("P = \(p), D = \(d), M = \(m), S = \(s)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return games(p: p, d: d, m: m, s: s)
    }
    
    func games(p: Int, d: Int, m: Int, s: Int) -> Int {
        if s < p {
            return 0
        }
        var sum = 0
        var price = p
        var count = 0
        while sum <= s {
            sum += price
            price = max(price - d, m)
            count += 1
        }
        count -= 1
        return count
    }
    
}
