//
//  DiagonalDifferenceTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DiagonalDifferenceTest: PracticeTest {
    var matrix = [[11, 2, 4],
                  [4, 5, 6],
                  [10, 8 , -12]]
    
    func randomMatrix(withSize size: Int) -> [[Int]] {
        var matrix = [[Int]]()
        for _ in 0..<size {
            var row = [Int]()
            for _ in 0..<size {
                row.append(Int.random(in: -100...100))
            }
            matrix.append(row)
        }
        return matrix
    }
    
    override func preExecuteAction() {
        print("Diagonal Difference")
        
        matrix = randomMatrix(withSize: 5)
    }
    
    override func postExecuteAction() {
        print("Matrix:")
        for r in matrix {
            print("\t\(r)")
        }
        print("|a| = \(result ?? "--")")
    }
    
    override func execute() -> Any? {
        return diagonalDifference(matrix)
    }
    
    func diagonalDifference(_ matrix: [[Int]]) -> Int {
        if matrix.count == 0 {
            return 0
        }
        if matrix.count != matrix.first?.count {
            return 0
        }
        
        var n = 0
        var sum = 0
        while n < matrix.count  {
            sum += (matrix[n][n] - matrix[n][matrix.count - 1 - n])
            n += 1
        }
        return abs(sum)
    }
}
