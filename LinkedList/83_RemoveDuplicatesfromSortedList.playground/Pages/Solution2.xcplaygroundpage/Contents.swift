/*
 83. Remove Duplicates from Sorted List
 
 QUESTION:
    Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.
 
 RESULT:
     Runtime: 24 ms, faster than 86.14% of Swift online submissions for Remove Duplicates from Sorted List.
     Memory Usage: 14.4 MB, less than 9.57% of Swift online submissions for Remove Duplicates from Sorted List.
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

let node3 = ListNode(1, nil)
let node2 = ListNode(1, node3)
let node1 = ListNode(1, node2)


func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    var first = head
    
    while first!.next != nil {
        if first!.next?.val == first!.val {
            first?.next = first?.next?.next
        } else {
            first = first?.next
        }
    }

    return head
}

deleteDuplicates(node1)

printAllNodeList(node: node1)
