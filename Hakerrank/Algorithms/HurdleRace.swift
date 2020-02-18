//
//  HurdleRace.swift
//  Hakerrank
//
//  Created on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class HurdleRaceTest: PracticeTest {
    //let maxHeight = 4
    //let heights = [1, 6, 3, 5, 2]
    let maxHeight = 7
    let heights = [2, 5, 4, 5, 2]
    
    override func preExecuteAction() {
        print("Hurdle Race")
    }
    
    override func postExecuteAction() {
        print("Heights: \(heights)")
        print("Max height: \(maxHeight)")
        print("Doses: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findDosesCount(heights, maxHeight: maxHeight)
    }
    
    func findDosesCount(_ heights: [Int], maxHeight: Int) -> Int {
        var maxHurdleHeight = 0
        for i in 0..<heights.count {
            if heights[i] > maxHurdleHeight {
                maxHurdleHeight = heights[i]
            }
        }
        
        return max(maxHurdleHeight - maxHeight, 0)
    }
}
