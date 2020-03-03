//
//  GridSearchTest.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class GridSearchTest: PracticeTest {
    let grid = ["7283455864",
                "6731158619",
                "8988242643",
                "3830589324",
                "2229505813",
                "5633845374",
                "6473530293",
                "7053106601",
                "0834282956",
                "4607924137"]
    let pattern =   ["9505",
                    "3845",
                    "3530"] // -> YES*/
    
    /*let grid = ["400453592126560",
                "114213133098692",
                "474386082879648",
                "522356951189169",
                "887109450487496",
                "252802633388782",
                "502771484966748",
                "075975207693780",
                "511799789562806",
                "404007454272504",
                "549043809916080",
                "962410809534811",
                "445893523733475",
                "768705303214174",
                "650629270887160"]
    let pattern =   ["99",
                     "99"]  // -> NO*/
    
    /*let grid = ["111111111111111",
                "111111111111111",
                "111111011111111",
                "111111111111111",
                "111111111111111"]
    let pattern =  ["11111",
                    "11111",
                    "11110"] // -> YES*/
    
    override func preExecuteAction() {
        print("The Grid Search")
    }
    
    override func postExecuteAction() {
        print("Grid")
        for g in grid {
            print("\t\(g)")
        }
        print("Pattern")
        for p in pattern {
            print("\t\(p)")
        }
        print("Is contained: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findGrid(grid, pattern: pattern)
    }
    
    struct Match {
        public var string: String
        public var index: Int
        public var x: Int = 0
        public var y: Int = 0
    }
    
    func findGrid(_ grid: [String], pattern: [String]) -> Bool {
        let d = grid[0].count
        let p_columns = pattern[0].count
        let p_rows = pattern.count
        
        var statDict = [Int: Int]()
        let string = grid.joined()
        let patternString = pattern.joined()
        var matches = [Match]()
        for p in pattern {
            let indexes = getSubstringIndexes(substring: p, inString: string)
            if indexes.count == 0 {
                return false
            } else {
                for i in indexes {
                    var match = Match(string: p, index: i)
                    let isContains = matches.contains(where: { $0.index == i })
                    if isContains {
                        continue
                    }
                    let pos = i % d
                    match.x = pos
                    match.y = i / d
                    matches.append(match)
                    if statDict[pos] != nil {
                        statDict[pos]! += 1
                    } else {
                        statDict[pos] = 1
                    }
                }
            }
        }
        
        let keys = statDict.filter({ $1 >= p_rows })
        for k in keys {
            let selected = matches.filter({ $0.x == k.key }).sorted(by: { $0.y < $1.y })
            let selectedString = selected.map({ $0.string }).joined()
            if selectedString.contains(patternString) {
                return true
            }
        }
        
        return false
    }
    
    func getSubstringIndexes(substring sbs: String, inString string: String) -> [Int] {
        var indices = [Int]()
        var searchStartIndex = string.startIndex

        while searchStartIndex < string.endIndex, let range = string.range(of: sbs, range: searchStartIndex..<string.endIndex), !range.isEmpty
        {
            let index = string.distance(from: string.startIndex, to: range.lowerBound)
            indices.append(index)
            searchStartIndex = string.index(after: range.lowerBound)
        }

        return indices
    }
}
