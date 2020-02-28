//
//  ReverseGameTest.swift
//  Hakerrank
//
//  Created on 2/28/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ReverseGameTest: PracticeTest {
    let n = 5
    let k = 2 // -> 4
    
    override func preExecuteAction() {
        print("Reverse game")
    }
    
    override func postExecuteAction() {
        print("N = \(n), K = \(k)")
        print("Index: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        for i in 0..<n {
            print("\(i) : \(reverse(forN: n, k: i))")
        }
        
        return reverse(forN: n, k: k)
    }
    
    func reverse(forN n: Int, k: Int) -> Int {
        if n == 1 {
            return 1
        }
        
        let startPos = k
        let endPos = n - k - 1
        
        return min(startPos * 2 + 1, endPos * 2)
    }
}
