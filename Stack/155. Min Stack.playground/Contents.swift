/*
 155. Min Stack
 
 QUESTION:
     Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

     Implement the MinStack class:

     MinStack() initializes the stack object.
     void push(int val) pushes the element val onto the stack.
     void pop() removes the element on the top of the stack.
     int top() gets the top element of the stack.
     int getMin() retrieves the minimum element in the stack.
     You must implement a solution with O(1) time complexity for each function.
 RESULT:
     Runtime: 67 ms, faster than 93.02% of Swift online submissions for Min Stack.
     Memory Usage: 15.7 MB, less than 29.65% of Swift online submissions for Min Stack.

 */

import Foundation

class MinStack {
    var items: [Int]
    var minItems: [Int]
    
    init() {
        items = []
        minItems = []
    }
    
    func push(_ val: Int) {
        if minItems.isEmpty || val <= minItems.last! {
            minItems.append(val)
        }
        
        items.append(val)
    }
    
    func pop() {
        guard !items.isEmpty else { return }
   
        let removedVal = items.removeLast()
        
        if let last = minItems.last, removedVal == last {
            minItems.removeLast()
        }
        
    }
    
    func top() -> Int {
        return items.isEmpty ? -1 : items.last!
    }
    
    func getMin() -> Int {
        return minItems.isEmpty ? -1 : minItems.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

