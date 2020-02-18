//
//  StaircaseTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class StaircaseTest: PracticeTest {
    var stairChar = "#"
    var size = 1
    
    override func preExecuteAction() {
        print("Staircase")
    }
    
    override func execute() -> Any? {
        staircase(size)
        return nil
    }
    
    func staircase(_ size: Int) {
        for i in 1...size {
            var a = Array(repeating: " ", count: size - i)
            a.append(contentsOf: Array(repeating: stairChar, count: i))
            print(a.joined())
        }
    }
}
