//
//  ClimbingLeaderboardTest.swift
//  Hakerrank
//
//  Created on 2/17/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ClimbingLeaderboardTest: PracticeTest {
    //let allScores = [100, 100, 50, 40, 40, 20, 10]
    //let myScores = [5, 5, 25, 50, 120]
    var allScores = [100, 90, 90, 80, 75, 60]
    var myScores = [50, 65, 77, 90, 102]
    var testResult = [Int]()
    
    override func preExecuteAction() {
        print("Climbing the Leaderboard")
    }
    
    override func postExecuteAction() {
        print("All scores: \(allScores)")
        print("My scores: \(myScores)")
        print("Queue: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        loadTestData()
        
        return processScores(allScores, myScores: myScores)
    }
    
    func loadTestData() {
        // load test data
        let path = "/Users/snappii/Documents/Dev/Hakerrank/Hakerrank/TestData/ClimbingLeaderboard/ClimbingLeaderboardTestData_1.txt"
        do {
            let data = try String(contentsOfFile: path, encoding: .utf8)
            let strings = data.components(separatedBy: .newlines)
            
            let count1 = strings[0]
            let data1 = strings[1]
            allScores = data1.components(separatedBy: .whitespaces).map({ Int($0)! })
            let count2 = strings[2]
            myScores = strings[3].components(separatedBy: .whitespaces).map({ Int($0)! })

        } catch {
            print(error)
        }
        
        // load result data
        let path2 = "/Users/snappii/Documents/Dev/Hakerrank/Hakerrank/TestData/ClimbingLeaderboard/ClimbingLeaderboardTestResult_1.txt"
        do {
            let data = try String(contentsOfFile: path2, encoding: .utf8)
            testResult = data.components(separatedBy: .newlines).filter({ $0.count > 0 }).map({ Int($0) ?? 0 })
        } catch {
            print(error)
        }
    }
    
    func processScores(_ allScores: [Int], myScores: [Int]) -> [Int] {
        var queue = Array(repeating: 0, count: myScores.count)
        
        var rank = 1
        var currentScore = allScores.first!
        var currentMyScoreIndex = myScores.count - 1
        for score in allScores {
            if currentMyScoreIndex < 0 {
                break
            }
            
            if score < currentScore {
                rank += 1
                currentScore = score
            }
            
            if myScores[currentMyScoreIndex] >= score {
                queue[currentMyScoreIndex] = rank
                //queue.append(rank)
                currentMyScoreIndex -= 1
                while currentMyScoreIndex >= 0 && myScores[currentMyScoreIndex] >= score {
                    queue[currentMyScoreIndex] = rank
                    currentMyScoreIndex -= 1
                }
            }
            
            print("Score: \(score), Rank: \(rank)")
        }
        
        if currentMyScoreIndex > -1 {
            for _ in (0...currentMyScoreIndex).reversed() {
                queue[currentMyScoreIndex] = rank + 1
                currentMyScoreIndex -= 1
            }
        }

        return queue
    }
}
