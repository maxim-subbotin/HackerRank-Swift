//
//  TaunAndBdayTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class TaumAndBdayTest: PracticeTest {
    /*let b = 10
    let w = 10
    let bc = 1
    let wc = 1
    let z = 1 // 20*/
    
    /*let b = 5
    let w = 9
    let bc = 2
    let wc = 3
    let z = 4 // 37*/
    
    let b = 7
    let w = 7
    let bc = 4
    let wc = 2
    let z = 1 // 35*/
    
    override func preExecuteAction() {
        print("Taum and Bday")
    }
    
    override func postExecuteAction() {
        print("b = \(b), w = \(w), bc = \(bc), wc = \(wc), z = \(z)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findOptimum(b: b, w: w, bc: bc, wc: wc, z: z)
    }
    
    func findOptimum(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
        let blackPrice = min(bc, wc + z)
        let whitePrice = min(wc, bc + z)
        let s = blackPrice * b + whitePrice * w
        
        return s
    }
}
