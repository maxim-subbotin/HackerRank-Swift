//
//  EncryptionTest.swift
//  Hakerrank
//
//  Created on 3/1/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class EncryptionTest: PracticeTest {
    //let str = "Have a nice day" // hae and via ecy
    //let str = "feedthedog" // fto ehg ee dd
    let str = "chillout" // clu hlt io
    
    override func preExecuteAction() {
        print("Encryption")
    }
    
    override func postExecuteAction() {
        print("String: \(str)")
        print("Encoded: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processString(str)
    }
    
    func processString(_ s: String) -> String {
        let str = s.replacingOccurrences(of: " ", with: "")
        let q = sqrt(Double(str.count))
        var rows = 0
        var columns = 0
        if Int(q) * Int(q) == str.count {
            rows = Int(q)
            columns = Int(q)
        } else {
            var floorQ = Int(floor(q))
            let ceilQ = Int(ceil(q))
            
            if floorQ * ceilQ < s.count {
                floorQ += 1
            }
            
            rows = floorQ
            columns = ceilQ
        }
        
        var array = [[String]]()
        var currentArray = [String]()
        var i = 0
        var chars = str.map({ "\($0)" })
        while i < chars.count {
            currentArray.append(chars[i])
            if currentArray.count == columns {
                array.append(currentArray)
                currentArray.removeAll()
            }
            if i == chars.count - 1 && currentArray.count > 0 {
                array.append(currentArray)
            }
            i += 1
        }
        
        var encoded = [String]()
        for i in 0..<columns {
            var enc = ""
            for j in 0..<rows {
                if i < array[j].count {
                    enc.append(array[j][i])
                }
            }
            encoded.append(enc)
        }
        
        return encoded.joined(separator: " ")
    }
}
