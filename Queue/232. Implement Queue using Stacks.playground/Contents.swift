/*
 232. Implement Queue using Stacks
 
 QUESTION:
     Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

     Implement the MyQueue class:

     void push(int x) Pushes element x to the back of the queue.
     int pop() Removes the element from the front of the queue and returns it.
     int peek() Returns the element at the front of the queue.
     boolean empty() Returns true if the queue is empty, false otherwise.
     Notes:

     You must use only standard operations of a stack, which means only push to top, peek/pop from top, size, and is empty operations are valid.
     Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.
 RESULT:
     Runtime: 3 ms, faster than 67.44% of Swift online submissions for Implement Queue using Stacks.
     Memory Usage: 14.3 MB, less than 64.19% of Swift online submissions for Implement Queue using
 */

class Stack {
    var size: Int { items.count }
    var isEmpty: Bool { items.isEmpty }
    
    private var items: [Int]
    
    init() {
        self.items = []
    }
    
    func push(v: Int) {
        items.append(v)
    }
    
    func pop() -> Int {
        guard !items.isEmpty else { return -1 }
        let removedItem = items.removeLast()
        return removedItem
    }
    
    func top() -> Int {
        guard !items.isEmpty else { return -1 }
        return items.last!
    }
}

class MyQueue {
    private var topStack: Stack
    private var secStack: Stack
    
    init() {
        topStack = Stack()
        secStack = Stack()
    }
    
    func push(_ x: Int) {
        if topStack.isEmpty {
            topStack.push(v: x)
        } else {
            secStack.push(v: x)
        }
    }
    
    func pop() -> Int {
        guard !topStack.isEmpty else { return -1 }
        let removedItem = topStack.pop()
        
        while !secStack.isEmpty {
            if secStack.size == 1 {
                let temp = secStack.pop()
                
                while !topStack.isEmpty {
                    secStack.push(v: topStack.pop())
                }
                
                topStack.push(v: temp)
                break
            } else {
                topStack.push(v: secStack.pop())
            }
        }
        
        return removedItem
    }
    
    func peek() -> Int {
        return topStack.top()
    }
    
    func empty() -> Bool {
        return topStack.isEmpty && secStack.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
let obj = MyQueue()
obj.push(1)
obj.push(2)
obj.push(3)
obj.push(4)
print(obj.empty())
print(obj.peek())
obj.pop()
obj.push(5)
obj.pop()
obj.pop()
print(obj.peek())

