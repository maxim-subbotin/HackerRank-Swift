//
//  PrintElementsOfLinkedListTest.swift
//  Hakerrank
//
//  Created on 2/20/20.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?

    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?

    public init() {}
    
    public init(withIntArray array: [Int]) {
        for i in array {
            insertNode(nodeData: i)
        }
    }

    public func insertNode(nodeData: Int) {
        self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
    }

    private func insertNode(node: SinglyLinkedListNode) {
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }

        tail = node
    }
    
    public func printContent() {
        var node = head
        print(node?.data ?? "")
        while node?.next != nil {
            node = node?.next
            print(node?.data ?? "")
        }
    }
}

class PrintElementsOfLinkedListTest: PracticeTest {
    let list = SinglyLinkedList(withIntArray: [16, 13, 10])
    
    override func preExecuteAction() {
        print("Print the Elements of a Linked List")
    }
    
    override func execute() -> Any? {
        printList(fromHead: list.head)
    }
    
    func printList(fromHead head: SinglyLinkedListNode?) {
        var node = head
        print(node?.data ?? "")
        while node?.next != nil {
            node = node?.next
            print(node?.data ?? "")
        }
    }
    
    /*
     So Swift pattern on the site contains an error I was forced to submit Python code
     
     def printLinkedList(head):
         node = head
         print(node.data)
         while node.next:
             node = node.next
             print(node.data)
     
     */
    
}
