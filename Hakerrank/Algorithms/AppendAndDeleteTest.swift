//
//  AppendAndDeleteTest.swift
//  Hakerrank
//
//  Created on 2/21/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class AppendAndDeleteTest: PracticeTest {
    //let string1 = "hackerhappy"
    //let string2 = "hackerrank"
    
    //let string1 = "aba"
    //let string2 = "aba"
    
    /*
     y
     yu
     2

     No
     */
    
    /*
     abcd
     abcdert
     10

     No
     */
    
    let string1 = "ashley"
    let string2 = "ash"
    
    override func preExecuteAction() {
        print("Append and Delete")
    }
    
    override func postExecuteAction() {
        print("String #1: \(string1)")
        print("String #2: \(string2)")
        print("Count = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processStrings(string1, string2: string2)
    }
    
    func processStrings(_ string1: String, string2: String) -> Int {
        // try to find common part
        let minLength = min(string1.count, string2.count)
        var commonString = ""
        
        let array1 = Array(string1)
        let array2 = Array(string2)
        
        for i in 0..<minLength {
            if array1[i] == array2[i] {
                commonString.append(array1[i])
            } else {
                break
            }
        }
        
        let count = (array1.count - commonString.count) + (array2.count - commonString.count)
        
        return count
    }
}
