/*
 QUESTION:
    Given the head of a singly linked list, return true if it is a palindrome.

 RESULT:
    Runtime: 1049 ms, faster than 63.61% of Swift online submissions for Palindrome Linked List.
    Memory Usage: 31.9 MB, less than 22.13% of Swift online submissions for Palindrome Linked List.
 NOTE:
    use Array to cache, the Time Complexity: O(n) and Space Complexity: O(n).
 */

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

func isPalindrome(_ head: ListNode?) -> Bool {
    var first = head
    var nodes = [ListNode]()
    
    while first != nil {
        nodes.append(first!)
        first = first?.next
    }
    
    if nodes.count < 1 { return true }
    var j = nodes.count - 1
    for (i, _) in nodes.enumerated() {
        if i == j { break}
        
        if nodes[i].val != nodes[j].val {
            return false
        }
        
        j -= 1
    }
    
    return true
}
