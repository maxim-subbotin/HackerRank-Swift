//
//  3DSurfaceAreaTest.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ThreeDSurfaceAreaTest: PracticeTest {
    let matrix = [[1, 3, 4],
                  [2, 2, 3],
                  [1, 2, 4]] // -> 60
    
    override func preExecuteAction() {
        print("3D Surface Area")
    }
    
    override func postExecuteAction() {
        print("Matrix:")
        for a in matrix {
            print("\t\(a)")
        }
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processSufrace(matrix)
    }
    
    func processSufrace(_ matrix: [[Int]]) -> Int {
        var sum = 0
        let h = matrix.count
        let w = matrix[0].count
        
        sum += 2 * h * w
        
        for i in 0..<h {
            var s = matrix[i][0] + matrix[i][w - 1]
            for j in 0..<(w - 1) {
                s += abs(matrix[i][j] - matrix[i][j + 1])
            }
            sum += s
        }
        
        for i in 0..<w {
            var s = matrix[0][i] + matrix[h - 1][i]
            for j in 0..<(h - 1) {
                s += abs(matrix[j][i] - matrix[j + 1][i])
            }
            sum += s
        }
        
        return sum
    }
}
