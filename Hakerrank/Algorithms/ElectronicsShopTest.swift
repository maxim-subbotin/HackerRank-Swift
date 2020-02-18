//
//  ElectronicsShopTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ElectronicsShopTest: PracticeTest {
    let budget = 10
    let keyboards = [3, 1]
    let drives = [5, 2, 8]
    
    override func preExecuteAction() {
        print("Electronics Shop")
    }
    
    override func postExecuteAction() {
        print("Keyboards: \(keyboards)")
        print("Drives: \(drives)")
        print("Budget: \(budget)")
        print("Best choice: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return bestChoice(withKeyboards: keyboards, drives: drives, andBudget: budget)
    }
    
    // the most evident solution, but it requires N*N calculations
    /*
    var max = 0
    for i in 0..<keyboards.count {
        for j in 0..<drives.count {
            let sum = keyboards[i] + drives[j]
            if sum > max && sum <= budget {
                max = sum
            }
        }
    }
    */
    
    func bestChoice(withKeyboards keyboards:[Int], drives: [Int], andBudget budget: Int) -> Int {
        let keys = keyboards.sorted()
        let usbs = drives.sorted()
        
        var maxSum = 0
        
        for i in 0..<keys.count {
            if keys[i] >= budget {
                continue
            }
            for j in 0..<usbs.count {
                if keys[i] + usbs[j] > budget {
                    continue
                } else {
                    maxSum = max(maxSum, keys[i] + usbs[j])
                }
            }
        }
        
        return maxSum > 0 ? maxSum : -1
    }
}
