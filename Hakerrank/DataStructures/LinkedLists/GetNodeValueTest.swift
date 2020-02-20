//
//  GetNodeValueTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class GetNodeValueTest: PracticeTest {
    let array = [1, 2, 3, 4, 5]
    let position = 2
    
    override func preExecuteAction() {
        print("Get Node Value")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Value: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        let list = SinglyLinkedList(withIntArray: array)
        return getValueFromTail(head: list.head, position: position)
    }
    
    func getValueFromTail(head: SinglyLinkedListNode?, position: Int) -> Int {
        if head == nil {
            return 0
        }
        
        var items = [Int]()
        var node = head
        while node != nil {
            if let data = node?.data {
                items.append(data)
            }
            node = node?.next
        }
        
        let index = items.count - 1 - position
        if index < 0 {
            return 0
        }
        return items[index]
    }
    
    /*
     Python code:
     
     def getNode(head, positionFromTail):
         if not head:
             return 0
         items = []
         node = head
         while node:
             if node.data:
                 items.append(node.data)
             node = node.next
         index = len(items) - 1 - positionFromTail
         if index < 0:
             return 0
         return items[index]
     
     */
}
