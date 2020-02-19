//
//  HandshakeTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class HandshakeTest: PracticeTest {
    let n = 5
    
    override func preExecuteAction() {
        print("Handshake")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("Handshakes: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return handshakesCount(n)
    }
    
    func handshakesCount(_ n: Int) -> Int {
        var sum = 0
        
        for i in 0...n - 1 {
            sum += i
        }
        
        return sum
    }
}
