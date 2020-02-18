//
//  CountingValleysTest.swift
//  Hakerrank
//
//  Created on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CountingValleysTest: PracticeTest {
    // let stepString = "UDDDUDUU"
    let stepString = "UDDDUUUUUDDDDUUUD"
    
    override func preExecuteAction() {
        print("Counting Valleys")
    }
    
    override func postExecuteAction() {
        print("Track: \(stepString)")
        print("Count of Valleys: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return countValleys(stepString)
    }
    
    enum StepDirection: Character {
        case up = "U"
        case down = "D"
    }
    
    func countValleys(_ stepString: String) -> Int {
        let steps = Array(stepString).map({ StepDirection(rawValue: $0) ?? .up })
        
        var count = 0
        var sum = 0
        for step in steps {
            sum += (step == .up ? 1 : -1)
            if sum == 0 {
                if step == .up {
                    count += 1
                }
            }
        }
        
        return count
    }
}
