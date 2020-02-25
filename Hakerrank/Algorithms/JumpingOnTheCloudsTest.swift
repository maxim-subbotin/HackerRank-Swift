//
//  JumpingOnTheCloudsTest.swift
//  Hakerrank
//
//  Created on 2/25/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class JumpingOnTheCloudsTest: PracticeTest {
    //let clouds = [0, 0, 1, 0, 0, 1, 0] // -> 4
    let clouds = [0, 0, 0, 0, 1, 0] // -> 3
    
    override func preExecuteAction() {
        print("Jumping on the Clouds")
    }
    
    override func postExecuteAction() {
        print("Clouds: \(clouds)")
        print("Jumps: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return jump(onClouds: clouds)
    }
    
    func jump(onClouds clouds: [Int]) -> Int {
        var count = 0
        var currentPosition = 0
        while currentPosition < clouds.count - 1 {
            if currentPosition < clouds.count - 2 {
                //let next = clouds[currentPosition + 1]
                let afterNext = clouds[currentPosition + 2]
                if afterNext == 0 {
                    currentPosition = currentPosition + 2
                    count += 1
                } else {
                    currentPosition = currentPosition + 1
                    count += 1
                }
            } else {
                let d = clouds.count - currentPosition
                currentPosition += d
                count += 1
            }
        }
        
        return count
    }
}
