//
//  RestaurantTest.swift
//  Hakerrank
//
//  Created on 2/28/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class RestaurantTest: PracticeTest {
    let l = 30
    let b = 40
    
    override func preExecuteAction() {
        print("Restaurant")
    }
    
    override func postExecuteAction() {
        print("L = \(l), B = \(b)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return slice(l, b: b)
    }
    
    func slice(_ l: Int, b: Int) -> Int {
        if l == b {
            return 1
        }
        if l % b == 0 {
            return l / b
        }
        if b % l == 0 {
            return b / l
        }
        let set1 = Set<Int>(getDivisors(forN: l))
        let set2 = Set<Int>(getDivisors(forN: b))
        let finalSet = set1.intersection(set2)
        
        var max = 0
        for d in finalSet {
            if d > max {
                max = d
            }
        }
        
        return (l * b) / (max * max)
    }
    
    func getDivisors(forN n: Int) -> [Int] {
        var divs = [Int]()
        var i = 1
        while i * i <= n {
            if n % i == 0 {
                if i * i != n {
                    divs.append(i)
                }
                divs.append(n / i)
            }
            
            i += 1
        }
        
        return divs.sorted()
    }
}
