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
    let obstacles = [[5, 5], [4, 2], [2, 3]] // -> 10*/
    
    /*let size = 4
    let queenRow = 4
    let queenColumn = 4
    let obstacles = [[Int]]() // -> 9*/
    
    /*let size = 8
    let queenRow = 4
    let queenColumn = 4
    let obstacles = [[3, 5]] // -> 24*/
    
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
        
        //coordinates transformation, queen is center
        var trObstacles = obstacles.map({ [$0[0] - queenRow, $0[1] - queenColumn] })
        let minRow = 0 - queenRow + 1
        let maxRow = size - queenRow
        let minColumn = -queenColumn + 1
        let maxColumn = size - queenColumn
        
        //remove wrong obstacles
        trObstacles.removeAll(where: { !($0[0] == 0 || $0[1] == 0 || $0[0] == $0[1] || $0[0] == -$0[1]) })
        
        var count = 0
        // horizontal -> to left
        var pos = 1
        while pos <= maxColumn {
            if trObstacles.first(where: { $0[0] == 0 && $0[1] == pos }) != nil {
                break
            }
            count += 1
            pos += 1
        }
        // horizontal -> to right
        pos = -1
        while pos >= minColumn {
            if trObstacles.first(where: { $0[0] == 0 && $0[1] == pos }) != nil {
                break
            }
            count += 1
            pos -= 1
        }
        // vertical -> to up
        pos = 1
        while pos <= maxRow {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == 0 }) != nil {
                break
            }
            count += 1
            pos += 1
        }
        // vertical -> to bottom
        pos = -1
        while pos >= minRow {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == 0 }) != nil {
                break
            }
            count += 1
            pos -= 1
        }
        // diagonal BottomLeft-TopRight -> up
        pos = 1
        while pos <= maxRow && pos <= maxColumn {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == pos }) != nil {
                break
            }
            count += 1
            pos += 1
        }
        // diagonal BottomLeft-TopRight -> down
        pos = -1
        while pos >= minRow && pos >= minColumn {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == pos }) != nil {
                break
            }
            count += 1
            pos -= 1
        }
        // diagonal TopLeft-BottomRight -> up
        pos = 1
        while pos <= maxRow && -pos >= minColumn {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == -pos }) != nil {
                break
            }
            count += 1
            pos += 1
        }
        // diagonal TopLeft-BottomRight -> down
        pos = -1
        while pos >= minRow && -pos <= maxColumn {
            if trObstacles.first(where: { $0[0] == pos && $0[1] == -pos }) != nil {
                break
            }
            count += 1
            pos -= 1
        }
        
        return count
    }
    
}
