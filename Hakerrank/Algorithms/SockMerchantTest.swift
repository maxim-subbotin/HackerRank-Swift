//
//  SockMerchantTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/15/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SockMerchantTest: PracticeTest {
    let array = [10, 20, 20, 10, 10, 30, 50, 10, 20]
    
    override func preExecuteAction() {
        print("Sock Merchant")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Sock pairs: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findSockPairs(array)
    }
    
    func findSockPairs(_ array: [Int]) -> Int {
        var count = 0
        var buffer = [Int]()
        for i in 0..<array.count {
            if let index = buffer.firstIndex(of: array[i]) {
                count += 1
                buffer.remove(at: index)
            } else {
                buffer.append(array[i])
            }
        }
        
        return count
    }
}
