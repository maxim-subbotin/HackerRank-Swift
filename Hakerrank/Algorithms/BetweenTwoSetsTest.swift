//
//  BetweenTwoSetsTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/12/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BetweenTwoSetsTest: PracticeTest {
    let array1 = [2, 4]
    let array2 = [16, 32, 96]
    let primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    
    func primeFactors(forNumber n: Int, level: Int) -> [Int] {
        if primeNumbers.contains(n) {
            return [n]
        }
        return [1]
    }
}
