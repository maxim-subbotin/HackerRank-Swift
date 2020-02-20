//
//  InsertNodeAtHeadTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class InsertNodeAtHeadTest: PracticeTest {
    let array = [383, 484, 392, 975, 321]
    let list = SinglyLinkedList()
    
    override func preExecuteAction() {
        print("Insert a node at the head of a linked list")
    }
    
    override func postExecuteAction() {
        print("Data: \(array)")
        print("List:")
        list.printContent()
    }
    
    override func execute() -> Any? {
        insertValues(array)
    }
    
    func insertValues(_ array: [Int]) {
        for i in array {
            insertToHead(i)
        }
    }
    
    func insertToHead(_ value: Int) {
        if list.head == nil {
            list.insertNode(nodeData: value)
        } else {
            let currentHead = list.head
            list.head = SinglyLinkedListNode(nodeData: value)
            list.head?.next = currentHead
        }
    }
    
    /*
     Python code:
     
     def insertNodeAtHead(llist, data):
         if llist:
             newHead = SinglyLinkedListNode(data)
             newHead.next = llist
             return newHead
         else:
             head = SinglyLinkedListNode(data)
             return head
     
     */
}
