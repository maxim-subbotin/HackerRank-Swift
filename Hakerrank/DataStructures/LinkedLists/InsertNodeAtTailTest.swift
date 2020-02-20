//
//  InsertNodeAtTailTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class InsertNodeAtTailTest: PracticeTest {
    let array = [141, 302, 164, 530, 474]
    let list = SinglyLinkedList()
    
    override func preExecuteAction() {
        print("Insert a node at the tail of a linked list")
    }
    
    override func postExecuteAction() {
        print("Data: \(array)")
        print("List:")
        (result as! SinglyLinkedListNode).printContent()
    }
    
    override func execute() -> Any? {
        return insertValues(array)
    }
    
    func insertValues(_ array: [Int]) -> SinglyLinkedListNode? {
        var node: SinglyLinkedListNode?
        for i in array {
            node = insertToTail(node, value: i)
        }
        return node
    }
    
    func insertToTail(_ head: SinglyLinkedListNode?, value: Int) -> SinglyLinkedListNode? {
        if head == nil {
            return SinglyLinkedListNode(nodeData: value)
        } else {
            var node = head
            while node != nil {
                if node?.next == nil {
                    let nextNode = SinglyLinkedListNode(nodeData: value)
                    node?.next = nextNode
                    break
                }
                node = node?.next
            }
            return head
        }
    }
    
    /*
     Python code:
     
     def insertNodeAtTail(head, data):
         if not head:
             return SinglyLinkedListNode(data)
         else:
             node = head
             while node:
                 if not node.next:
                     nextNode = SinglyLinkedListNode(data)
                     node.next = nextNode
                     break
                 node = node.next
             return head
     
     */
}
