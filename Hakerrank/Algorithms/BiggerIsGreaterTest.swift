//
//  BiggerIsGreaterTest.swift
//  Hakerrank
//
//  Created on 3/1/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BiggerIsGreaterTest: PracticeTest {
    //let s = "ab" // ba
    //let s = "hefg" // hegf
    let s = "dkhc" // hcdk
    /*
     bb -
     hefg - hegf
     dhck - dhkc
     dkhc - hcdk
     */
    
    override func preExecuteAction() {
        print("Bigger is Greater")
    }
    
    override func postExecuteAction() {
        print("Value: \(s)")
        print("Next value: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processString(s)
    }
    
    // try to apply Branch and Bound method
    func processString(_ s: String) -> String? {
        let chars = s.map({ "\($0)" })
        let sortedChars = chars.sorted()
        var charSet = [String: Int]()
        for i in 0..<sortedChars.count {
            charSet[sortedChars[i]] = i
        }
        
        for i in (0...(s.count - 3)).reversed() {
            let c = chars[i]
            var charsAfter = [String]()
            for j in (i+1)..<s.count {
                charsAfter.append(chars[j])
            }
            charsAfter.sort()
            for newChar in charsAfter {
                if charSet[newChar]! > charSet[chars[i + 1]]! {
                    
                }
            }
            
            print(c)
        }
        
        return nil
    }
    
    // 1  - array1 bigger than array2
    // -1 - array2 bigger than array1
    // 0  - arrays are equal
    func compare(array1: [String], array2: [String], charSet: [String: Int]) -> Int {
        for i in 0..<array1.count {
            if charSet[array1[i]]! > charSet[array2[i]]! {
                return 1
            }
            if charSet[array1[i]]! < charSet[array2[i]]! {
                return -1
            }
        }
        return 0
    }
}
