//
//  NonDivisibleSubsetTest.swift
//  Hakerrank
//
//  Created on 2/24/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class NonDivisibleSubsetTest: PracticeTest {
    let array = [19, 10, 12, 10, 24, 25, 22]
    let k = 4 // -> 3
    
    //let array = [1, 7, 2, 4]
    //let k = 3 // -> 3
    
    override func preExecuteAction() {
        print("Non-Divisible Subset")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("K = \(k)")
        print("Subset size: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findSubset(array, k: k)
    }
    
    func findSubset(_ array: [Int], k: Int) -> Int {
        let mods = array.map({ $0 % k }).sorted()
        
        var results = [Int]()
        for mod in mods {
            var needToAdd = true
            for i in 0..<results.count {
                if (mod + results[i]) % k == 0 {
                    needToAdd = false
                    break
                }
            }
            if needToAdd {
                results.append(mod)
            }
        }

        return results.count
    }
}
