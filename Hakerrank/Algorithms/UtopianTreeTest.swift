//
//  UtopianTreeTest.swift
//  Hakerrank
//
//  Created on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class UtopianTreeTest: PracticeTest {
    let seasonNumber = 3
    
    override func preExecuteAction() {
        print("Utopian Tree")
    }
    
    override func postExecuteAction() {
        print("Season #: \(seasonNumber)")
        print("Height: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return height(forSeason: seasonNumber)
    }
    
    func height(forSeason n: Int) -> Int {
        if n == 0 {
            return 1
        }
        var h = 1
        for i in 1...n {
            if i % 2 == 1 {
                h = h * 2
            } else {
                h += 1
            }
        }
        return h
    }
    
}
