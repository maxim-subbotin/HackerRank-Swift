//
//  MergeTwoSortedLinkedListsTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class MergeTwoSortedLinkedListsTest: PracticeTest {
    let array1 = [1, 2, 3]
    let array2 = [2, 4, 5, 6]
    
    override func preExecuteAction() {
        print("Merge two sorted linked lists")
    }
    
    override func postExecuteAction() {
        print("Array #1: \(array1)")
        print("Array #2: \(array2)")
        (result as? SinglyLinkedListNode)?.printContent()
    }
    
    override func execute() -> Any? {
        let list1 = SinglyLinkedList(withIntArray: array1)
        let list2 = SinglyLinkedList(withIntArray: array2)
        return merge(head1: list1.head, head2: list2.head)
    }
    
    func merge(head1: SinglyLinkedListNode?, head2: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
        if head1 == nil && head2 != nil {
            return head2
        }
        if head1 != nil && head2 == nil {
            return head1
        }
        
        var node1 = head1
        var node2 = head2
        var merged: SinglyLinkedListNode?
        if node1!.data < node2!.data {
            merged = node1
            node1 = node1?.next
        } else {
            merged = node2
            node2 = node2?.next
        }
        var mergedNode = merged
        while node1 != nil || node2 != nil {
            if node2 != nil && node1 != nil {
                if node1!.data < node2!.data {
                    mergedNode?.next = node1
                    mergedNode = node1
                    node1 = node1?.next
                } else {
                    mergedNode?.next = node2
                    mergedNode = node2
                    node2 = node2?.next
                }
            } else if node2 != nil {
                mergedNode?.next = node2
                mergedNode = node2
                node2 = node2?.next
            } else if node1 != nil {
                mergedNode?.next = node1
                mergedNode = node1
                node1 = node1?.next
            }
        }
        
        return merged
    }
    
    /*
     Python code:
     
     def mergeLists(head1, head2):
         if not head1 and head2:
             return head2
         if not head2 and head1:
             return head1
         node1 = head1
         node2 = head2
         merged = None
         if node1.data < node2.data:
             merged = node1
             node1 = node1.next
         else:
             merged = node2
             node2 = node2.next
         mergedNode = merged
         while node1 or node2:
             if node1 and node2:
                 if node1.data < node2.data:
                     mergedNode.next = node1
                     mergedNode = node1
                     node1 = node1.next
                 else:
                     mergedNode.next = node2
                     mergedNode = node2
                     node2 = node2.next
             elif node2:
                 mergedNode.next = node2
                 mergedNode = node2
                 node2 = node2.next
             elif node1:
                 mergedNode.next = node1
                 mergedNode = node1
                 node1 = node1.next
         return merged
     
     */
}
