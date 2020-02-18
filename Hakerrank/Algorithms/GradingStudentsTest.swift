//
//  GradingStudentsTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class GradingStudentsTest: PracticeTest {
    let array = [73, 67, 38, 33]
    
    override func preExecuteAction() {
        print("Grading Students")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Final grade: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return roundArray(array)
    }
    
    func roundArray(_ array: [Int]) -> [Int] {
        return array.map({ roundGrade($0) })
    }
    
    func roundGrade(_ grade: Int) -> Int {
        if grade < 38 {
            return grade
        }
        
        let nextMult = ((grade / 5) + 1) * 5
        let d = nextMult - grade
        if d < 3 {
            return nextMult
        } else {
            return grade
        }
    }
}
