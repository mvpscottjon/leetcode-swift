/*
 206. Reverse Linked List
 
 QUESTION:
    Given the head of a singly linked list, reverse the list, and return the reversed list.


 RESULT:
     Runtime: 12 ms, faster than 89.20% of Swift online submissions for Reverse Linked List.
     Memory Usage: 14.8 MB, less than 72.33% of Swift online submissions for Reverse Linked List.
 */

class ListNode {
    var val: Int
    var next: ListNode?
    
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func printNodeList(node: ListNode?) {
    var first = node
    while first != nil {
        print("Node, value:", first!.val as Any, "next:", first!.next?.val as Any)
        first = first?.next
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var tmp: ListNode? = nil
    var first = head

    while first != nil {
        let second = first?.next
        first?.next = tmp
        
        tmp = first
        first = second
    }
    
    return tmp
}


let node5 = ListNode(5, nil)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

//let list = [1, 2, 3, 4, 5] ==> [5, 4, 3, 2, 1]
let reverseNode = reverseList(node1)

printNodeList(node: reverseNode)
