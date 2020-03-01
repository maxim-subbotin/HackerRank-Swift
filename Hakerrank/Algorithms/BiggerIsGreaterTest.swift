//
//  BiggerIsGreaterTest.swift
//  Hakerrank
//
//  Created on 3/1/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BiggerIsGreaterTest: PracticeTest {
    let s = "ab" // ba
    /*
     bb -
     hefg - hegf
     dhck - dhkc
     dkhc - hcdk
     */
    
    func processString(_ s: String) -> String? {
        let sortedChars = s.map({ "\($0)" }).sorted()
        
        for i in (0...(s.count - 1)).reversed() {
            
        }
        
        return nil
    }
}
