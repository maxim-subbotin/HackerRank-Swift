//
//  ReverseLinkedListTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class ReverseLinkedListTest: PracticeTest {
    let array = [1, 2, 3, 4, 5]
    var list = SinglyLinkedList()
    
    override func preExecuteAction() {
        print("Reverse a linked list")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Reversed:")
        (result as? SinglyLinkedListNode)?.printContent()
    }
    
    override func execute() -> Any? {
        list = SinglyLinkedList(withIntArray: array)
        return reverseList(forHead: list.head)
    }
    
    func reverseList(forHead head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
        if head == nil {
            return nil
        }
        
        var prevNode: SinglyLinkedListNode?
        var node = head
        while node != nil {
            let nextNode = node?.next
            node?.next = prevNode
            prevNode = node
            node = nextNode
        }
        
        return prevNode
    }
    
    /*
     Python code:
     
     def reverse(head):
         if head is None:
             return None
         prevNode = None
         node = head
         while node:
             nextNode = node.next
             node.next = prevNode
             prevNode = node
             node = nextNode
         return prevNode

     */
}
