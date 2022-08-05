/*
 24. Swap Nodes in Pairs
 
 QUESTION:
    Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)
 
 RESULT:
     Runtime: 9 ms, faster than 28.34% of Swift online submissions for Swap Nodes in Pairs.
     Memory Usage: 14 MB, less than 50.80% of Swift online submissions for Swap Nodes in Pairs.

 */

import Darwin

class ListNode {
    var val: Int
    var next: ListNode?
    
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    func printSelf() {
        print("Node:", "value:", self.val, "next:", self.next?.val as Any)
    }
}

func printAllNodeList(node: ListNode?) {
    var first = node
    while first != nil {
        print("Node, value:", first!.val as Any, "next:", first!.next?.val as Any)
        first = first?.next
    }
}

let node5 = ListNode(5, nil)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

func swapPairs(_ head: ListNode?) -> ListNode? {
    var first = head
    var temp: ListNode?
    var newHead: ListNode?
    
    // nodes < 2 ==> don't need to swap
    if head?.next == nil || head == nil { return head }

    while first != nil && first?.next != nil {
        let second = first?.next
    
        if newHead == nil { newHead = second }
   
        temp?.next = second
        first?.next = second?.next
        second?.next = first
        
        temp = first
        
        first = first?.next
    }
    
    return newHead
}


swapPairs(node1)


