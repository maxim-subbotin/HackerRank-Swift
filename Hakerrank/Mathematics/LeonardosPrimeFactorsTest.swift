//
//  LeonardosPrimeFactorsTest.swift
//  Hakerrank
//
//  Created on 2/27/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class LeonardosPrimeFactorsTest: PracticeTest {
    //let n = 5000 // -> 5
    //let n = 10000000000 // -> 10
    let n = 1000000000000000000 //
    
    let primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    let muls = [2, 6, 30, 210, 2310, 30030, 510510, 9699690, 223092870, 6469693230,
                200560490130, 7420738134810, 304250263527210, 13082761331670030, 614889782588491410]
    
    override func preExecuteAction() {
        print("Leonardo's Prime Factors")
    }
    
    override func postExecuteAction() {
        print("N = \(n)")
        print("C = \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return processNumber(n)
    }
    
    func processNumber(_ n: Int) -> Int {
        if n <= 1 {
            return 0
        }

        for i in 0..<muls.count - 1 {
            if n >= muls[i] && n < muls[i + 1] {
                return i + 1
            }
        }
        
        return muls.count
    }
    
    // If you want - you can find primes
    func sieveOfErathosthenes(_ n: Int) -> [Int] {
        if n <= 1 {
            return [Int]()
        }
        if n == 2 {
            return [2]
        }
        
        var a = Array(repeating: true, count: n)
        var i = 2
        while i * i < n {
            if a[i] {
                var j = i * i
                while j < n {
                    a[j] = false
                    j += i
                }
            }
            
            i += 1
        }
        
        var primes = [Int]()
        for i in 2..<a.count {
            if a[i] {
                primes.append(i)
            }
        }
        
        return primes
    }
    
    /*
     Python code:
     
     def primeCount(n):
         if n <= 1:
             return 0
         for i in range(0, len(muls) - 1):
             if n >= muls[i] and n < muls[i + 1]:
                 return i + 1
         return len(muls)
     
     */
}
