/*
 QUESTION:
    Given the head of a singly linked list, return true if it is a palindrome.

 RESULT:
     Runtime: 1252 ms, faster than 38.93% of Swift online submissions for Palindrome Linked List.
     Memory Usage: 26.6 MB, less than 69.57% of Swift online submissions for Palindrome Linked List.
 
 NOTE:
    Don't use Array to cache, the Time Complexity: O(n) and Space Complexity: O(1).
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
    var slow = head
    var fast = head
    var temp: ListNode?
    
    // reverse first half
    // stop while when fast arrived last(slow at middle)
    while fast != nil && fast?.next != nil {
        fast = fast?.next?.next
        
        let second = slow?.next
        slow?.next = temp
        
        temp = slow
        
        slow = second
    }
    
    // if fast != nil ==> odd nodeList
    if fast != nil {
        // when just one node, slow == nil && fast != nil
        if slow == nil {
            return true
        }
        slow = slow?.next
    }
    
    // compare reverse(temp) and slow(middle) to end
    while slow != nil {
        if slow?.val != temp?.val {
            return false
        }
        slow = slow?.next
        temp = temp?.next
    }
    
    return true
}

