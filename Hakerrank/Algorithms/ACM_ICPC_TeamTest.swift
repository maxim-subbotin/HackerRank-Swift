//
//  ACM_ICPC_TeamTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ACM_ICPC_TeamTest: PracticeTest {
    //let data = ["10101", "11100", "00101", "11010"] // 5
    let data = ["10101", "11100", "00101", "11010", "10100", "10000", "01000"]
    
    override func preExecuteAction() {
        print("ACM ICPC Team")
    }
    
    override func postExecuteAction() {
        print("Data:")
        for s in data {
            print("\t\(s)")
        }
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processData(data)
    }
    
    class Member {
        public var data: String
        public var ints = [Int]()
        public var numberOfTopics = 0
        
        init(withData d: String) {
            self.data = d
            self.ints = d.map({ Int("\($0)") ?? 0 })
            self.numberOfTopics = self.ints.filter({ $0 > 0 }).count
        }
        
        func merge(withMember m: Member) -> Int {
            var count = 0
            for i in 0..<self.ints.count {
                if self.ints[i] == 1 || m.ints[i] == 1 {
                    count += 1
                }
            }
            return count
        }
    }
    
    func processData(_ array: [String]) -> [Int] {
        var members = array.map({ Member(withData: $0) })
        members.sort(by: { $0.numberOfTopics > $1.numberOfTopics })

        let totalTopics = members.first?.ints.count ?? 0
        var stat = [Int:Int]()
        
        var maxValue = 0
        for i in 0..<members.count {
            for j in (i + 1)..<members.count {
                if members[i].numberOfTopics + members[j].numberOfTopics < totalTopics {
                    break
                }
                let v = members[i].merge(withMember: members[j])
                if stat[v] == nil {
                    stat[v] = 1
                } else {
                    stat[v]! += 1
                }
                if v > maxValue {
                    maxValue = v
                }
            }
        }
        
        return [maxValue, stat[maxValue] ?? 0]
    }
}
