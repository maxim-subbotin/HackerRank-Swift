//
//  RepeatedStringTest.swift
//  Hakerrank
//
//  Created on 2/25/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class RepeatedStringTest: PracticeTest {
    //let string = "aba"
    //let n = 10 // -> 7
    
    let string = "a"
    let n = 10000000 // -> 10000000
    
    override func preExecuteAction() {
        print("Repeated String")
    }
    
    override func postExecuteAction() {
        print("Array: \(string)")
        print("N = \(n)")
        print("Count: = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processString(string, n: n)
    }
    
    func processString(_ str: String, n: Int) -> Int {
        var count = 0
        
        let aCount = str.filter({ $0 == "a" }).count
        let k = n / str.count
        count += k * aCount
        
        let m = n % str.count
        let endIndex = str.index(str.startIndex, offsetBy: m)
        let cut = str[str.startIndex..<endIndex]
        count += cut.filter({ $0 == "a" }).count

        return count
    }
}
