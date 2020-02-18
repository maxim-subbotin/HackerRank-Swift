//
//  SavePrisonerTest.swift
//  Hakerrank
//
//  Created on 2/18/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SaveThePrisonerTest: PracticeTest {
    //let numberOfPrisoners = 5
    //let numberOfSweets = 2
    //let startChairNumber = 2 // result = 3
    
    //let numberOfPrisoners = 7
    //let numberOfSweets = 19
    //let startChairNumber = 2 // result = 6
    
    //let numberOfPrisoners = 3
    //let numberOfSweets = 7
    //let startChairNumber = 3 // result = 3
    
    //let numberOfPrisoners = 46934
    //let numberOfSweets = 543563655
    //let startChairNumber = 46743 // result = 20809
    
    //let numberOfPrisoners = 530
    //let numberOfSweets = 533048047
    //let startChairNumber = 529 // result = 15
    
    let numberOfPrisoners = 436776012
    let numberOfSweets = 436776012
    let startChairNumber = 436776011 // result = 436776010
    
    override func preExecuteAction() {
        print("Save the Prisoner!")
    }
    
    override func postExecuteAction() {
        print("N = \(numberOfPrisoners), M = \(numberOfSweets), S = \(startChairNumber)")
        print("Last number: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkSweets(numberOfPrisoners, numberOfSweets: numberOfSweets, startChairNumber: startChairNumber)
    }
    
    func checkSweets(_ numberOfPrisoners: Int, numberOfSweets: Int, startChairNumber: Int) -> Int {
        let r = (startChairNumber + numberOfSweets - 1) % numberOfPrisoners
        if r == 0 {
            return numberOfPrisoners
        }
        return r
    }
}
