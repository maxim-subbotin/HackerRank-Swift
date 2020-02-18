//
//  ViralAdvertisingTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ViralAdvertisingTest: PracticeTest {
    //let n = 3 // result = 9
    let n = 5 // result = 24
    //let n = 1 // result = 2
    
    override func preExecuteAction() {
        print("Viral Advertising")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("Cumulative: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return calculateAuditory(forDay: n)
    }
    
    func calculateAuditory(forDay day: Int) -> Int {
        if day == 1 {
            return 2
        }
        
        var shared = 5
        var liked = Int(floor(5 / 2.0))
        var cumulative = liked
        for _ in 2...day {
            shared = liked * 3
            liked = Int(floor(Double(shared) * 0.5))
            cumulative += liked
        }
        
        return cumulative
    }
}
