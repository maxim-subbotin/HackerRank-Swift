//
//  FindThePointTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class FindThePointTest: PracticeTest {
    //let p = CGPoint(x: 0, y: 0)
    //let q = CGPoint(x: 1, y: 1) // (2, 2)
    
    //let p = CGPoint(x: 1, y: 1)
    //let q = CGPoint(x: 2, y: 2) // (3, 3)
    
    //let p = CGPoint(x: 4, y: 3)
    //let q = CGPoint(x: 5, y: 2) // (6, 1)
    
    let p = CGPoint(x: 2, y: 4)
    let q = CGPoint(x: 5, y: 6) // (8, 8)
    
    override func preExecuteAction() {
        print("Find the Point")
    }
    
    override func postExecuteAction() {
        print("P = \(p)")
        print("Q = \(q)")
        print("R = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return reflectPoint(p: p, q: q)
    }
    
    func reflectPoint(p: CGPoint, q: CGPoint) -> CGPoint {
        return CGPoint(x: q.x + (q.x - p.x), y: q.y + (q.y - p.y))
    }
}
