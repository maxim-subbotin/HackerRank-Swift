//
//  QueensAttackIITest.swift
//  Hakerrank
//
//  Created on 2/25/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class QueensAttackIITest: PracticeTest {
    let size = 5
    let queenRow = 4
    let queenColumn = 3
    let obstacles = [[5, 5], [4, 2], [2, 3]] // -> 10
    
    /*let size = 4
    let queenRow = 4
    let queenColumn = 4
    let obstacles = [[Int]]() // -> 10*/
    
    override func preExecuteAction() {
        print("Queen's Attack II")
    }
    
    override func postExecuteAction() {
        print("Size: \(size) x \(size)")
        print("Queen: \(queenRow), \(queenColumn)")
        print("Obstacles: \(obstacles)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return attack(size: size, queenRow: queenRow, queenColumn: queenColumn, obstacles: obstacles)
    }
    
    func attack(size: Int, queenRow: Int, queenColumn: Int, obstacles: [[Int]]) -> Int {
        if size <= 1 {
            return 0
        }
        if size == 2 {
            return 3 - obstacles.count
        }
        /*if obstacles.count == 0 {
            return (size - 1) * 2 +
                    (size - queenRow) + max(0, queenRow - 1) +
                    (size - queenColumn) + max(0, queenColumn - 1)
        }*/
        
        //coordinates transformation, queen is center
        var trObstacles = obstacles.map({ [$0[0] - queenRow, $0[1] - queenColumn] })
        var minRow = 0 - queenRow
        var maxRow = size - queenRow
        var minColumn = -queenColumn
        var maxColumn = size - queenColumn
        
        var count = 0
        
        var minBottom = minRow
        var maxUp = maxRow
        var minLeft = minColumn
        var maxRight = maxColumn
        for obs in trObstacles {
            if obs[0] == 0 { // horizontal
                if obs[1] < 0 {
                    minLeft = max(obs[1], minLeft)
                }
                if obs[1] > 0 {
                    maxRight = min(obs[1], maxRight)
                }
            }
            if obs[1] == 0 { // vertical
                if obs[0] < 0 {
                    minBottom = max(obs[0], minBottom)
                }
                if obs[0] > 0 {
                    maxUp = min(obs[0], maxUp)
                }
            }
        }
        
        //check horizontal beam
        var from = minColumn
        var to = maxColumn
        let horizontalObstacles = trObstacles.filter({ $0[0] == 0 })
        if horizontalObstacles.count > 0 {
            let xs = horizontalObstacles.map({ $0[0] }).sorted()
            if 0 < xs.first! {
                to = xs.first!
            } else if 0 > xs.last! {
                from = xs.last!
            } else {
                
            }
        }
        
        return count
    }
    
}
