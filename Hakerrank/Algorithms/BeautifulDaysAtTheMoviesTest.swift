//
//  BeautifulDaysAtTheMoviesTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class BeautifulDaysAtTheMoviesTest: PracticeTest {
    //let fromDay = 20
    //let toDay = 23
    //let divisor = 6
    
    //let fromDay = 949488
    //let toDay = 1753821
    //let divisor = 5005440 // Count: 805
    
    //let fromDay = 1
    //let toDay = 2000000
    //let divisor = 45684660 // Count: 2998
    
    //1 2000000 1000000000
    let fromDay = 1
    let toDay = 2000000
    let divisor = 1000000000 // Count: 2998
    
    override func preExecuteAction() {
        print("Beautiful Days at the Movies")
    }
    
    override func postExecuteAction() {
        print("From \(fromDay) till \(toDay)")
        print("Divisor: \(divisor)")
        print("Count: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        return checkDays(fromDay, toDay: toDay, divisor: divisor)
    }
    
    func checkDays(_ fromDay: Int, toDay: Int, divisor: Int) -> Int {
        var count = 0
        if divisor > toDay {
            let numbers = findSymmetricNumbers(fromDay, till: toDay)
            return numbers.count
        } else {
            for i in fromDay...toDay {
                if abs(i - reverse(ofNumber: i)) % divisor == 0 {
                    count += 1
                }
            }
        }
        return count
    }
    
    func reverse(ofNumber n: Int) -> Int {
        let str = "\(n)"
        let revString = String(str.map({ $0 }).reversed())
        return Int(revString) ?? 0
    }
    
    func findSymmetricNumbers(_ from: Int, till: Int) -> [Int] {
        var values = [Int]()
        
        for i in 1...9 {
            var v = i // i
            if v >= from && v <= till {
                values.append(v)
            }
            v = i * 10 + i // ii
            if v >= from && v <= till {
                values.append(v)
            }
            for j in 0...9 {
                var v = i * 100 + j * 10 + i // iji
                if v >= from && v <= till {
                    values.append(v)
                }
                v = i * 1000 + j * 100 + j * 10 + i // ijji
                if v >= from && v <= till {
                    values.append(v)
                }
                for n in 0...9 {
                    var v = i * 10000 + j * 1000 + n * 100 + j * 10 + i // ijnji
                    if v >= from && v <= till {
                        values.append(v)
                    }
                    v = i * 100000 + j * 10000 + n * 1000 + n * 100 + j * 10 + i // ijnnji
                    if v >= from && v <= till {
                        values.append(v)
                    }
                    
                    for m in 0...9 {
                        var v = i * 1000000 + j * 100000 + n * 10000 + m * 1000 + n * 100 + j * 10 + i // ijnmnji
                        if v >= from && v <= till {
                            values.append(v)
                        }
                        v = i * 10000000 + j * 1000000 + n * 100000 + m * 10000 + m * 1000 + n * 100 + j * 10 + i // ijnmnji
                        if v >= from && v <= till {
                            values.append(v)
                        }
                        for k in 0...9 {
                            var v = i * 100000000 + j * 10000000 + n * 1000000 + m * 100000 + k * 10000 + m * 1000 + n * 100 + j * 10 + i // ijnmkmnji
                            if v >= from && v <= till {
                                values.append(v)
                            }
                            v = i * 1000000000 + j * 100000000 + n * 10000000 + m * 1000000 + k * 100000 + k * 10000 + m * 1000 + n * 100 + j * 10 + i // ijnmkkmnji
                            if v >= from && v <= till {
                                values.append(v)
                            }
                        }
                    }
                }
            }
        }
        
        return values
    }
}
