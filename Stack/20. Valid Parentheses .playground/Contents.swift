/*
 20. Valid Parentheses
 
 QUESTION:
     Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

     An input string is valid if:

     Open brackets must be closed by the same type of brackets.
     Open brackets must be closed in the correct order.
 RESULT:
     Runtime: 0 ms, faster than 100.00% of Swift online submissions for Valid Parentheses.
     Memory Usage: 14.3 MB, less than 65.58% of Swift online submissions for Valid Parentheses.
 */

class Stack {
    var items: [Character]
    init() {
        items = []
    }
    
    func push(_ c: Character) {
        items.append(c)
    }
    
    func pop(){
        items.removeLast()
    }
    
    func top() -> Character {
        items.last!
    }
}

func isValid(_ s: String) -> Bool {
    let stack = Stack()

    for char in s {
        let str = String(char)
        if str == "(" || str == "[" || str == "{" {
            stack.push(char)
        } else {
            // Will be false if first char is not "(" or "[" or "{"
            if stack.items.isEmpty { return false }
            
            switch stack.top() {
            case "(":
                if str != ")" { return false}
            case "[":
                if str != "]" { return false}
            case "{":
                if str != "}" { return false}
            default:
                return false
            }
            stack.pop()
        }
    }
    
    return stack.items.isEmpty
}

// true
isValid("()")

// true
isValid("()[]{}")

// false
isValid("(]")

// false
isValid("([)]")

// true
isValid("({})")

// false
isValid("[")

// false
isValid("[[")

isValid("]")
