//
//  DiwaliLightsTest.swift
//  Hakerrank
//
//  Created on 2/28/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DiwaliLightsTest: PracticeTest {
    let n = 647
    
    override func preExecuteAction() {
        print("Diwali Lights")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("C mod 100000 = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return combination(n)
    }
    
    // mod = 100000
    // 2^17 = 131072
    func combination(_ n: Int) -> Int {
        if n <= 17 {
            return ((pow(2, n) as NSDecimalNumber).intValue - 1) % 100000
        }
        
        let k = n % 17
        let m = n / 17
        var modArray = [Int]()
        for i in 0..<m {
            modArray.append(31072)
        }
        modArray.append(((pow(2, k) as NSDecimalNumber).intValue - 1) % 100000)
        
        var mods = getMods(forArray: modArray)
        while mods.count > 1 {
            mods = getMods(forArray: mods)
        }
        
        if mods[0] > 1 {
            return mods[0] - 1
        } else {
            return 99999
        }
    }
    
    func getMods(forArray array: [Int]) -> [Int] {
        var m = 1
        var mods = [Int]()
        for i in 0..<array.count {
            m *= array[i]
            if m > 100000 {
                mods.append(m % 100000)
                m = 1
                continue
            }
            if i == array.count - 1 {
                mods.append(m % 100000)
            }
        }
        return mods
    }
}
