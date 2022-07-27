/*
 QUESTION:
     Given an integer n, return a string array answer (1-indexed) where:

     answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
     answer[i] == "Fizz" if i is divisible by 3.
     answer[i] == "Buzz" if i is divisible by 5.
     answer[i] == i (as a string) if none of the above conditions are true.
 RESULT:
     Runtime: 24 ms, faster than 82.13% of Swift online submissions for Fizz Buzz.
     Memory Usage: 14.6 MB, less than 59.28% of Swift online submissions for Fizz Buzz.

 */

func fizzBuzz(_ n: Int) -> [String] {
    var stringArray = [String]()
    for i in 1...n {
        if i % 15 == 0 {
            stringArray.append("FizzBuzz")
        } else if i % 3 == 0 {
            stringArray.append("Fizz")
        } else if i % 5 == 0 {
            stringArray.append("Buzz")
        } else {
            stringArray.append("\(i)")
        }
    }
    
    return stringArray
}

// Ans: ["1","2","Fizz"]
fizzBuzz(3)

// Ans: ["1","2","Fizz","4","Buzz"]
fizzBuzz(5)

// Ans: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
fizzBuzz(15)
