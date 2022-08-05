/*
 QUESTION:
    Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.
 
 RESULT:
     Runtime: 37 ms, faster than 43.23% of Swift online submissions for Remove Duplicates from Sorted List.
     Memory Usage: 14.1 MB, less than 47.52% of Swift online submissions for Remove Duplicates from Sorted List.
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
    var first = head
    var temp:ListNode?
    var newHead:ListNode?
    var dict = [Int: Bool]()
    
    while first != nil {
        if newHead == nil { newHead = first}

        if dict[first!.val] == true {
            // delete duplicated
            temp?.next = first?.next
        } else {
            // add to dict
            dict[first!.val] = true
            temp = first
        }
        
        first = first?.next
    }

    return newHead
}

deleteDuplicates(node1)

printAllNodeList(node: node1)
