//
//  FormingMagicSquareTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class FormingMagicSquareTest: PracticeTest {
    //let s = [[5, 3, 4], [1, 5, 8], [6, 4, 2]] // min = 7
    //let s = [[4, 9, 2], [3, 5, 7], [8, 1, 5]] // min = 1
    //let s = [[2, 7, 6], [9, 5, 1], [4, 3, 8]] // min = 0
    //let s = [[4, 8, 2], [4, 5, 7], [6, 1, 6]] // min = 4
    //let s = [[4, 5, 8], [2, 4, 1], [1, 9, 7]] // min = 14
    //let s = [[2, 2, 7], [8, 6, 4], [1, 2, 9]] // min = 16
    //let s = [[6, 4, 6], [9, 9, 3], [9, 9, 7]] // min = 21
    //let s = [[6, 1, 2], [7, 2, 6], [5, 6, 2]] // min = 18
    let s = [[9, 3, 3], [3, 3, 2], [1, 8, 1]] // min = 18
    
    override func preExecuteAction() {
        print("Forming a Magic Square")
    }
    
    override func postExecuteAction() {
        print("Square: ")
        for i in 0..<s.count {
            print("\t\(s[i])")
        }
        print("Cost: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processSquare(s)
    }

    let magicSquares = [    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
                            [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
                            [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
                            [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
                            [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
                            [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
                            [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
                            [[2, 7, 6], [9, 5, 1], [4, 3, 8]]]
    
    func processSquare(_ s: [[Int]]) -> Int {
        var cost = 9 * 3 * 3
        for squre in magicSquares {
            var sum = 0
            for i in 0...2 {
                for j in 0...2{
                    sum += abs(s[i][j] - squre[i][j])
                }
            }
            if sum < cost {
                cost = sum
            }
        }
        
        return cost
    }
}
