//
//  DeleteDuplicatesFromLinkedListTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DeleteDuplicatesFromLinkedListTest: PracticeTest {
    //let array = [1, 2, 2, 3, 4, 4, 4, 5, 6, 6, 6, 6]
    let array = [3, 3, 3, 4, 5, 5]
    
    override func preExecuteAction() {
        print("Delete duplicate-value nodes from a sorted linked list")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        (result as? SinglyLinkedListNode)?.printContent()
    }
    
    override func execute() -> Any? {
        let list = SinglyLinkedList(withIntArray: array)
        return distinct(head: list.head)
    }
    
    func distinct(head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
        if head == nil {
            return nil
        }
        
        var node = head
        while node != nil {
            if node?.next != nil {
                while node?.data == node?.next?.data {
                    node?.next = node?.next?.next
                }
            }
            node = node?.next
        }
        
        return head
    }
    
    /*
     Python code:
     
     def removeDuplicates(head):
         if not head:
             return None
         node = head
         while node:
             if node.next:
                 while node.data == node.next.data:
                     node.next = node.next.next
                     if not node.next:
                         break
             node = node.next
         return head
     
     */
}
