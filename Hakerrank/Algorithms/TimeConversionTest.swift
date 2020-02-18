//
//  TimeConversionTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class TimeConversionTest: PracticeTest {
    let time = "07:00:00AM"
    
    override func preExecuteAction() {
        print("Time Conversion")
    }
    
    override func postExecuteAction() {
        print("12-hour format: \(time)")
        print("24-hour format: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return timeConvert(time)
    }
    
    func timeConvert(_ strTime: String) -> String {
        let isAM = strTime.contains("AM")
        
        let str = strTime.replacingOccurrences(of: "AM", with: "").replacingOccurrences(of: "PM", with: "")
        let parts = str.components(separatedBy: ":")
        if parts.count == 3 {
            if let hours = Int(parts[0]) {
                var finalHour = hours
                if isAM && hours == 12 {
                    finalHour = 0
                } else if !isAM && hours != 12 {
                    finalHour = hours + 12
                }
                let hourPart = finalHour < 10 ? "0\(finalHour)" : "\(finalHour)"
                return "\(hourPart):\(parts[1]):\(parts[2])"
            }
        }
        
        return strTime
    }
}
