//
//  FlatlandSpaceStationsTest.swift
//  Hakerrank
//
//  Created on 3/3/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class FlatlandSpaceStationsTest: PracticeTest {
    /*let cityCount = 5
    let spaceStations = [0, 4] // -> 2*/
    
    /*let cityCount = 6
    let spaceStations = [0, 1, 2, 4, 3, 5] // -> 0*/
    
    let cityCount = 20
    let spaceStations = [13, 1, 11, 10, 6] // -> 6
    
    override func preExecuteAction() {
        print("Flatland Space Stations")
    }
    
    override func postExecuteAction() {
        print("Cities: \(cityCount)")
        print("Space stations: \(spaceStations)")
        print("Result: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return getMinDistance(forCityCount: cityCount, andStations: spaceStations)
    }
    
    func getMinDistance(forCityCount c: Int, andStations stations: [Int]) -> Int {
        var max = 0
        let sorted = stations.sorted()
        for i in -1..<sorted.count {
            var d = 0
            if i == -1 {
                d = sorted[0]
            } else if i == sorted.count - 1 {
                d = c - 1 - sorted[i]
            } else {
                d = (sorted[i + 1] - sorted[i]) / 2
            }
            if d > max {
                max = d
            }
        }
        return max
    }
}
