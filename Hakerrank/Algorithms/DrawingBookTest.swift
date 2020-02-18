//
//  DrawingBookTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DrawingBookTest: PracticeTest {
    let pageCount = 5
    let pageNumber = 4
    
    override func preExecuteAction() {
        print("Drawing Book")
    }
    
    override func postExecuteAction() {
        print("Page count: \(pageCount)")
        print("Page number: \(pageNumber)")
        print("Turnings: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return turnThePage(pageCount, pageNumber: pageNumber)
    }
    
    func turnThePage(_ pageCount: Int, pageNumber: Int) -> Int {
        let pagePairs = pageCount / 2 + 1
        let pairNumber = pageNumber / 2 + 1
        
        let turningsFromBeginning = pairNumber - 1
        let turningsFromEnding = pagePairs - pairNumber
        
        return min(turningsFromEnding, turningsFromBeginning)
    }
}
