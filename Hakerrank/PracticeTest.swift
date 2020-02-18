//
//  PracticeTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class PracticeTest {
    internal var result: Any?
    
    func execute() -> Any? {
        return nil
    }
    
    func preExecuteAction() {
        
    }
    
    func postExecuteAction() {
        
    }
    
    func run() {
        preExecuteAction()
        
        let date = Date()

        result = execute()
        
        let dateComponents = Calendar.current.dateComponents([.nanosecond], from: date, to: Date())
        if let time = dateComponents.nanosecond {
            print("Execution time: \(time) nanoseconds")
        }
        
        postExecuteAction()
    }
}
