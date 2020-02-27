//
//  GemstonesTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class GemstonesTest: PracticeTest {
    //var labels = [ "abcdde", "baccd", "eeabg"]
    var labels = [ "abc", "bcd", "defg", "zx"]
    
    override func preExecuteAction() {
        print("Gemstones")
    }
    
    override func postExecuteAction() {
        print("Mineral labels: \(labels)")
        print("Gemstones: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processLabels(labels)
    }
    
    func processLabels(_ array: [String]) -> Int {
        if array.count == 1 {
            return array[0].count
        }
        
        let sets = array.map({ Set($0.map({ "\($0)" })) })
        var set = sets[0].intersection(sets[1])
        for i in 2..<sets.count {
            set = set.intersection(sets[i])
            if set.count == 0 {
                return 0
            }
        }
        
        return set.count
    }
}
