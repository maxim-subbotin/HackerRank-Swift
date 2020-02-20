//
//  2DArrayTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class Array2DTest: PracticeTest {
    /*let array = [[-9, -9, -9, 1, 1, 1],
                 [0, -9, 0, 4, 3, 2],
                 [-9, -9, -9, 1, 2, 3],
                 [0, 0, 8, 6, 6, 0],
                 [0, 0, 0, -2, 0, 0],
                 [0, 0, 1, 2, 4, 0]]*/
    
    let array = [[0, -4, -6, 0, -7, -6],
                 [-1, -2, -6, -8, -3, -1],
                 [-8, -4, -2, -8, -8, -6],
                 [-3, -1, -2, -5, -7, -4],
                 [-3, -5, -3, -6, -6, -6],
                 [-3, -6, 0, -8, -6, -7]] // -19

    
    override func preExecuteAction() {
        print("2D Array - DS")
    }
    
    override func postExecuteAction() {
        print("Matrix: \(array)")
        print("Max sum: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findMaxValue(array)
    }
    
    func findMaxValue(_ matrix: [[Int]]) -> Int {
        var max = -1000
        let n = matrix[0].count
        for i in 1..<n - 1 {
            for j in 1..<n - 1 {
                let s = findSum(matrix, forI: i, andJ: j)
                if s > max {
                    max = s
                }
            }
        }
        
        return max
    }
    
    func findSum(_ matrix: [[Int]], forI i: Int, andJ j: Int) -> Int {
        return matrix[i - 1][j - 1] + matrix[i - 1][j] + matrix[i - 1][j + 1] +
               matrix[i][j] +
               matrix[i + 1][j - 1] + matrix[i + 1][j] + matrix[i + 1][j + 1]
    }
}
