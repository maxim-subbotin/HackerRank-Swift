//
//  AngryProfessorTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class AngryProfessorTest: PracticeTest {
    //let threshold = 3
    //let arriveTimes = [-1, -3, 4, 2] // YES
    
    //let threshold = 2
    //let arriveTimes = [0, -1, 2, 1] // NO

    //let threshold = 4
    //let arriveTimes = [-93, -86, 49, -62, -90, -63, 40, 72, 11, 67] // NO
    
    //let threshold = 10
    //let arriveTimes = [23, -35, -2, 58, -67, -56, -42, -73, -19, 37] // YES
    
    //let threshold = 9
    //let arriveTimes = [13, 91, 56, -62, 96, -5, -84, -36, -46, -13] // YES
    
    //let threshold = 8
    //let arriveTimes = [45, 67, 64, -50, -8, 78, 84, -51, 99, 60] // YES
    
    //let threshold = 7
    //let arriveTimes = [26, 94, -95, 34, 67, -97, 17, 52, 1, 86] //YES
    
    //let threshold = 2
    //let arriveTimes = [19, 29, -17, -71, -75, -27, -56, -53, 65, 83] // NO
    
    //let threshold = 10
    //let arriveTimes = [-32, -3, -70, 8, -40, -96, -18, -46, -21, -79] //YES
    
    //let threshold = 9
    //let arriveTimes = [-50, 0, 64, 14, -56, -91, -65, -36, 51, -28] // YES
    
    //let threshold = 6
    //let arriveTimes = [-58, -29, -35, -18, 43, -28, -76, 43, -13, 6] // NO
    
    let threshold = 1
    let arriveTimes = [88, -17, -96, 43, 83, 99, 25, 90, -39, 86] // NO
    
    override func preExecuteAction() {
        print("Angry Professor")
    }
    
    override func postExecuteAction() {
        print("Arrive time: \(arriveTimes)")
        print("Threshold: \(threshold)")
        print("Cancelled: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkClass(arriveTimes, threshold: threshold)
    }
    
    func checkClass(_ arriveTimes: [Int], threshold: Int) -> String {
        var arrivedInTime = 0
        for i in 0..<arriveTimes.count {
            if arriveTimes[i] <= 0 {
                arrivedInTime += 1
            }
            if arrivedInTime >= threshold {
                return "NO"
            }
        }
        
        return "YES"
    }
}
