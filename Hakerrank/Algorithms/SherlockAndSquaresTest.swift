//
//  SherlockAndSquaresTest.swift
//  Hakerrank
//
//  Created on 2/24/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SherlockAndSquaresTest: PracticeTest {
    //let a = 3
    //let b = 9
    
    //let a = 17
    //let b = 24 // -> 0

    //let a = 35
    //let b = 70 // -> 3
    
    let a = 100
    let b = 1000 // -> 22
    
    override func preExecuteAction() {
        print("Sherlock and Squares")
    }
    
    override func postExecuteAction() {
        print("A = \(a)")
        print("B = \(b)")
        print("Square count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkSquares(from: a, to: b)
    }
    
    func checkSquares(from a: Int, to b: Int) -> Int {
        let start = Int(floor(sqrt(Double(a))))
        let end = Int(floor(sqrt(Double(b))))

        var count = end - start + 1
        
        if start * start < a {
            count -= 1
        }
        if end * end > b {
            count -= 1
        }
        return count
    }
}
