//
//  InsertNodeAtPositionTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class InsertNodeAtPositionTest: PracticeTest {
    let array = [16, 13, 7]
    let element = 1
    let position = 2 // [16, 13, 1, 7]
    var list = SinglyLinkedList()
    
    override func preExecuteAction() {
        print("Insert a node at a specific position in a linked list")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Insert element \(element) on position \(position)")
        list.printContent()
    }
    
    override func execute() -> Any? {
        list = SinglyLinkedList(withIntArray: array)
        return insertAtList(head: list.head, value: element, position: position)
    }
    
    func insertAtList(head: SinglyLinkedListNode?, value: Int, position pos: Int) -> SinglyLinkedListNode? {
        let insertedNode = SinglyLinkedListNode(nodeData: value)
        if pos == 0 {
            insertedNode.next = head
            return insertedNode
        }
        
        var i = 1
        var node = head
        while i <= pos && node != nil {
            if i == pos {
                let nextNode = node?.next
                node?.next = insertedNode
                insertedNode.next = nextNode
            }
            node = node?.next
            i += 1
        }
        return head
    }
    
    /*
     Python code:
     
     def insertNodeAtPosition(head, data, position):
         insertedNode = SinglyLinkedListNode(data)
         if position == 0:
             insertedNode.next = head
             return insertedNode
         i = 1
         node = head
         while i <= position and node:
             if i == position:
                 nextNode = node.next
                 node.next = insertedNode
                 insertedNode.next = nextNode
             node = node.next
             i = i + 1
         return head
     
     */
}
