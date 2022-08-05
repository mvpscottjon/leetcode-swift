/*
 203. Remove Linked List Elements
 
 QUESTION:
    Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.
 RESULT:
     Runtime: 61 ms, faster than 73.64% of Swift online submissions for Remove Linked List Elements.
     Memory Usage: 15.5 MB, less than 97.73% of Swift online submissions for Remove Linked List Elements.
 */

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func printAllNodeList(node: ListNode?) {
    var first = node
    while first != nil {
        print("Node, value:", first!.val as Any, "next:", first!.next?.val as Any)
        first = first?.next
    }
}

let node5 = ListNode(4, nil)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    let newHead: ListNode? = ListNode(0)
    newHead?.next = head
    var first = newHead

    
    while first != nil {
        if first?.next?.val == val {
            first?.next = first?.next?.next
        } else {
            first = first?.next
        }
    }
    
    return newHead?.next
}

removeElements(node1, 4)

printAllNodeList(node: node1)
