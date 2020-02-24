//
//  LibraryFineTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/24/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class LibraryFineTest: PracticeTest {
    let d1 = 9
    let m1 = 6
    let y1 = 2015
    let d2 = 6
    let m2 = 6
    let y2 = 2015
    
    override func preExecuteAction() {
        print("Library Fine")
    }
    
    override func postExecuteAction() {
        print("Date1: \(d1) \(m1) \(y1)")
        print("Date2: \(d2) \(m2) \(y2)")
        print("Fine: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return libraryFine(d1: d1, m1: m1, y1: y1, d2: d2, m2: m2, y2: y2)
    }
    
    func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
        if d1 <= d2 && m1 == m2 && y1 == y2 {
            return 0
        }
        if d1 > d2 && m1 == m2 && y1 == y2 {
            return (d1 - d2) * 15
        }
        if m1 > m2 && y1 == y2 {
            return (m1 - m2) * 500
        }
        if y1 > y2 {
            return 10000
        }
        
        return 0
    }
}
