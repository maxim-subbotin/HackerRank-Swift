//
//  SimpleArraySumTest.swift
//  Hakerrank
//
//  Created by Snappii on 2/11/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class SimpleArraySumTest: PracticeTest {
    let array = [804, 254, 719, 502, 172, 189, 114, 471, 74, 673,
                 179, 508, 470, 572, 250, 537, 282, 467, 863, 649,
                 83, 241, 819, 314, 715, 481, 237, 460, 237, 520,
                 508, 57, 236, 882, 323, 359, 47, 899, 984, 687,
                 710, 237, 155, 718, 855, 983, 831, 605, 874, 169,
                 281, 957, 814, 295, 70, 290, 404, 433, 809, 853,
                 969, 134, 517, 548, 432, 117, 473, 684, 639, 408,
                 468, 947, 547, 907, 993, 970, 358, 103, 511, 686,
                 831, 672, 475, 463, 638, 945, 392, 325, 357, 494,
                 418, 315, 440, 614, 25, 361, 120, 320, 420, 92]
    
    override func preExecuteAction() {
        print("Simple array sum")
    }
    
    override func execute() -> Any? {
        let res = sum(withArray: array, andSize: array.count)
        return res
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Sum: \(result ?? "--")")
    }
    
    func sum(withArray array: [Int], andSize size: Int) -> Int {
        if size == 0 {
            return 0
        }
        return sum(withArray: array, andSize: size - 1) + array[size - 1]
    }
}
