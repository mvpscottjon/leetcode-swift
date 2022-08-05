/*
 QUESTION:
  * Question Link: https://leetcode.com/problems/max-stack/
  * Primary idea: Use a helper stack to keep track of the max value overall when a new
  *                  element is pushed and also updates the helper stack when pop API is called
  *
  * Time Complexity: push - O(1), pop - O(1), top - O(1), peekMax - O(1), popMax - O(n)
  * Space Complexity: O(n)
 RESULT:

 */

class MaxStack {
    var stack: [Int]
    var maxStack: [Int]

    init() {
        stack = [Int]()
        maxStack = [Int]()
    }

    func push(_ x: Int) {
        if maxStack.isEmpty || x >= maxStack.last! {
            maxStack.append(x)
        }

        stack.append(x)
    }

    func pop() -> Int {
//        guard !stack.isEmpty else { return -1 }

        let removedVal = stack.removeLast()

        if let last = maxStack.last, last == removedVal {
            maxStack.removeLast()
        }
        
        return removedVal
    }

    func top() -> Int {
        return stack.isEmpty ? -1 : stack.last!
    }

    func peekMax() -> Int {
        return maxStack.isEmpty ? -1 : maxStack.last!
    }

    // pop only max value
    // [1, 3, 5, 4, 2] ==> [1, 3, 4, 2]
    func popMax() -> Int {
        let max = peekMax()

        var buffer = [Int]()
        while top() != max {
            buffer.append(pop())
        }
        
        // pop max
        pop()
        
        while !buffer.isEmpty {
            push(buffer.removeLast())
        }

        return max
    }
}

let stack = MaxStack()
stack.push(1)
stack.push(3)
stack.push(5)
stack.push(4)
stack.push(2)

print(stack.stack)
print(stack.popMax())
print(stack.stack)
