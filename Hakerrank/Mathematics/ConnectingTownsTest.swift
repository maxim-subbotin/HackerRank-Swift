//
//  ConnectingTownsTest.swift
//  Hakerrank
//
//  Created on 2/26/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ConnectingTownsTest: PracticeTest {
    let array = [2, 2, 2]
    //let array = [1000, 1000, 1000, 1000, 1000, 1000] // -> 532900
    /*let array = [169, 426, 397, 221, 804, 611, 671, 814, 692, 986,
                 472, 652, 10, 487, 263, 994, 692, 706, 172, 42,
                 83, 706, 673, 697, 902, 634, 165, 187, 232, 694,
                 552, 32, 931, 621, 277, 432, 872, 568, 248, 941,
                 516, 338, 389, 390, 67, 984, 677, 223, 761, 329,
                 426, 174, 264, 180, 272, 887, 462, 561, 462, 810,
                 563, 734, 984, 716, 225, 646, 18, 42, 756, 624,
                 224, 906, 935, 174, 529, 129, 558, 433, 3] // -> 300714*/
    
    override func preExecuteAction() {
        print("Connecting Towns")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return findConnections(array)
    }
    
    func findConnections(_ array: [Int]) -> Int {
        var mods = getMods(forArray: array)
        while mods.count > 1 {
            mods = getMods(forArray: mods)
        }
        
        return mods[0]
    }
    
    func getMods(forArray array: [Int]) -> [Int] {
        var m = 1
        var mods = [Int]()
        for i in 0..<array.count {
            m *= array[i]
            if m > 1234567 {
                mods.append(m % 1234567)
                m = 1
                continue
            }
            if i == array.count - 1 {
                mods.append(m % 1234567)
            }
        }
        return mods
    }

}
