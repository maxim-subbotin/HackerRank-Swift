//
//  DayOfProgrammerTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/14/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DayOfProgrammerTest: PracticeTest {
    let year = 2017
    
    override func preExecuteAction() {
        print("Day of Programmer")
    }
    
    override func postExecuteAction() {
        print("Year: \(year)")
        print("Day of programmer: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return getDate(forYear: year)
    }
    
    func getDate(forYear year: Int) -> String {
        if year == 1918 {
            return "26.09.1918"
        }
        let calendar: Calendar = year < 1918 ? .gregorian : .julian
        let isLeap = isLeapYear(year, andCalendar: calendar)
        
        return isLeap ? "12.09.\(year)" : "13.09.\(year)"
    }
    
    enum Calendar {
        case julian
        case gregorian
    }
    
    func isLeapYear(_ year: Int, andCalendar calendar: Calendar) -> Bool {
        if calendar == .gregorian {
            return year % 4 == 0
        }
        if calendar == .julian {
            return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
        }
        return false
    }
}
