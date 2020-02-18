//
//  AppleAndOrangeTest.swift
//  Hakerrank
//
//  Created on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class AppleAndOrangeTest: PracticeTest {
    let s = 7 // left corner of Sam's house
    let t = 11 // right corner of Sam's house
    let a = 5 // position of apple tree
    let b = 15 // position of orange tree
    let appleArray = [-2, 2, 1]
    let orangeArray = [5, -6]
    
    override func preExecuteAction() {
        print("Apple and Orange")
    }
    
    override func postExecuteAction() {
        print("Apples: \(appleArray)")
        print("Oranges: \(orangeArray)")
        print("Apples on the roof: \( (result as! FruitData).apples )")
        print("Oranges on the roof: \( (result as! FruitData).oranges )")
    }
    
    override func execute() -> Any? {
        return processTrees(s: s, t: t, a: a, b: b, apples: appleArray, oranges: orangeArray)
    }
    
    struct FruitData {
        var apples = 0
        var oranges = 0
    }
    
    func processTrees(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> FruitData {
        let apples = processTree(forPosition: a, leftCorner: s, rightCorner: t, fruits: apples)
        let oranges = processTree(forPosition: b, leftCorner: s, rightCorner: t, fruits: oranges)
        return FruitData(apples: apples, oranges: oranges)
    }
    
    func processTree(forPosition p: Int, leftCorner: Int, rightCorner: Int, fruits: [Int]) -> Int {
        var fruitsOnRoof = 0
        for a in fruits {
            let d = p + a
            if d >= leftCorner && d <= rightCorner {
                fruitsOnRoof += 1
            }
        }
        return fruitsOnRoof
    }
}
