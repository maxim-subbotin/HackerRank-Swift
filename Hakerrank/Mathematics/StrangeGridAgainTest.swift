//
//  StrangeGridAgainTest.swift
//  Hakerrank
//
//  Created on 2/28/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class StrangeGridAgainTest: PracticeTest {
    /*let r = 6
    let c = 3 // -> 25*/
    
    /*let r = 5
    let c = 1 // -> 20*/
    
    let r = 4
    let c = 5 // -> 19
    
    override func preExecuteAction() {
        print("Strange Grid Again")
    }
    
    override func postExecuteAction() {
        print("R = \(r), C = \(c)")
        print("Grid[R,C] = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return gridElement(forRow: r, andColumn: 2 * (c - 1))
    }
    
    func gridElement(forRow r: Int, andColumn c: Int) -> Int {
        let m = (r - 1) % 2
        let n = (r - m * 2) / 2
        return c + n * 10 + m
        
        // the simplest approach
        /*var n = c
        while i < r {
            if i % 2 != 0 {
                n += 1
            } else {
                n += 9
            }
            i += 1
        }

        return n*/
    }
}
