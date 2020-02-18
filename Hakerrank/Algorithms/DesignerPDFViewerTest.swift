//
//  DesignerPDFViewerTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DesignerPDFViewerTest: PracticeTest {
    //let letterHeights = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    //let word = "abc"
    let letterHeights = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7]
    let word = "zaba"
    
    override func preExecuteAction() {
        print("Designer PDF Viewer")
    }
    
    override func postExecuteAction() {
        print("Letter heights: \(letterHeights)")
        print("Word: \(word)")
        print("Square: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processString(word, heights: letterHeights)
    }
    
    func processString(_ str: String, heights: [Int]) -> Int {
        var maxHeight = 0
        for char in str {
            if let index = indexOfLetter(char) {
                maxHeight = max(maxHeight, heights[index])
            }
        }
        return str.count * maxHeight
    }
    
    func indexOfLetter(_ char: Character) -> Int? {
        let str = "abcdefghijklmnopqrstuvwxyz"
        return str.map({ String($0) }).firstIndex(of: String(char))
    }
}
