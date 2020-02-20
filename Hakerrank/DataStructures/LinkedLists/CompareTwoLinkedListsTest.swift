//
//  CompareTwoLinkedListsTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

class CompareTwoLinkedListsTest: PracticeTest {
    let array1 = [1, 2, 3, 4]
    let array2 = [1, 2, 3, 4]
    
    override func preExecuteAction() {
        print("Compare two linked lists")
    }
    
    override func postExecuteAction() {
        print("Array #1: \(array1)")
        print("Array #2: \(array2)")
        print("Equal: \(result ?? "")")
    }
    
    override func execute() -> Any? {
        let list1 = SinglyLinkedList(withIntArray: array1)
        let list2 = SinglyLinkedList(withIntArray: array2)
        return compare(firstList: list1, secondList: list2)
    }
    
    func compare(firstList list1: SinglyLinkedList, secondList list2: SinglyLinkedList) -> Bool {
        if list1.head == nil || list2.head == nil {
            return false
        }

        var node1 = list1.head
        var node2 = list2.head
        while node1 != nil && node2 != nil {
            if node1?.data != node2?.data {
                return false
            }
            node1 = node1?.next
            node2 = node2?.next
            if node1 == nil && node2 != nil {
                return false
            }
            if node1 != nil && node2 == nil {
                return false
            }
        }
        
        return true
    }
    
    /*
     Python code:
     
     def compare_lists(llist1, llist2):
         if not llist1 or not llist2:
             return False
         node1 = llist1
         node2 = llist2
         while node1 and node2:
             if node1.data != node2.data:
                 return False
             node1 = node1.next
             node2 = node2.next
             if not node1 and node2:
                 return False
             if not node2 and node1:
                 return False
         return True
     
     */
}
