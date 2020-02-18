//
//  CatsAndMouseTest.swift
//  Hakerrank
//
//  Created on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CatsAndMouseTest: PracticeTest {
    let x = 1
    let y = 3
    let z = 2
    
    override func preExecuteAction() {
        print("Cats and a Mouse")
    }
    
    override func postExecuteAction() {
        print("x: \(x), y: \(y), z: \(z)")
        print("Winner: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return catchTheMouse(x, y: y, z: z)
    }
    
    func catchTheMouse(_ x: Int, y: Int, z: Int) -> String {
        let a = abs(x - z)
        let b = abs(y - z)
        if a == b {
            return "Mouse C"
        } else if a < b {
            return "Cat A"
        } else {
            return "Cat B"
        }
    }
}
