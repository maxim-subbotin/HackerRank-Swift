//
//  DeleteNodeTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class DeleteNodeTest: PracticeTest {
    let array = [20, 6, 2, 19, 7, 4, 15, 9] // [20, 6, 2, 7, 4, 15, 9]
    let position = 3
    var list = SinglyLinkedList()
    
    override func preExecuteAction() {
        print("Delete a Node")
    }
    
    override func postExecuteAction() {
        print("Array: \(array)")
        print("Position: \(position)")
        list.printContent()
    }
    
    override func execute() -> Any? {
        list = SinglyLinkedList(withIntArray: array)
        return delete(atPosition: position, head: list.head)
    }
    
    func delete(atPosition pos: Int, head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
        if pos == 0 {
            return head?.next
        }
        var i = 1
        var node = head
        while i <= pos && node != nil {
            if i == pos {
                let nextNode = node?.next
                let nodeAfterNext = nextNode?.next
                node?.next = nodeAfterNext
                break
            }
            node = node?.next
            i += 1
        }
        return head
    }
    
    /*
     
     Python code
     
     def deleteNode(head, position):
         if position == 0:
             return head.next
         i = 1
         node = head
         while i <= position and node:
             if i == position:
                 nextNode = node.next
                 nodeAfterNext = nextNode.next
                 node.next = nodeAfterNext
                 break
             node = node.next
             i = i + 1
         return head
     
     */
}
