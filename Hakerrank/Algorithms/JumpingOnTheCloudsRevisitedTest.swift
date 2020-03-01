//
//  JumpingOnTheCloudsRevisitedTest.swift
//  Hakerrank
//
//  Created on 3/1/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class JumpingOnTheCloudsRevisitedTest: PracticeTest {
    /*let clouds = [0, 0, 1, 0, 0, 1, 1, 0]
    let k = 2 // -> 92*/
    
    let clouds = [1, 1, 1, 0, 1, 1, 0, 0, 0, 0]
    let k = 3 // -> 80
    
    /*let clouds = [0, 0, 1, 0]
    let k = 2 // -> 96*/
    
    override func preExecuteAction() {
        print("Jumping on the Clouds: Revisited")
    }
    
    override func postExecuteAction() {
        print("Clouds: \(clouds)")
        print("K = \(k)")
        print("Jumps: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return jump(onClouds: clouds, k: k)
    }
    
    func jump(onClouds clouds: [Int], k: Int) -> Int {
        let jumpCount = clouds.count / k
        var thundCount = 0
        for i in 0..<clouds.count {
            if clouds[i] == 1 && i % k == 0 {
                thundCount += 1
            }
        }
        
        return 100 - (jumpCount + thundCount * 2)
    }
}
