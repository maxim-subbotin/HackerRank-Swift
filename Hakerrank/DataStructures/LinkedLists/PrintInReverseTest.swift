//
//  PrintInReverseTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class PrintInReverseTest: PracticeTest {
    let array = [16, 12, 4, 2, 5]
    
    override func preExecuteAction() {
        print("Print in reverse")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
    }
    
    override func execute() -> Any? {
        let list = SinglyLinkedList(withIntArray: array)
        printReverse(forHead: list.head)
        return nil
    }
    
    func printReverse(forHead head: SinglyLinkedListNode?) {
        if head == nil {
            return
        }
        
        var items = [Int]()
        var node = head
        while node != nil {
            if let data = node?.data {
                items.append(data)
            }
            node = node?.next
        }
        
        for i in (0...items.count - 1).reversed() {
            print(items[i])
        }
    }
    
    /*
     Python code
     
     def reversePrint(head):
         if head is None:
             return
         items = []
         node = head
         while node:
             if node.data:
                 items.append(node.data)
             node = node.next
         for i in reversed(items):
             print(i)
     
     */
}
