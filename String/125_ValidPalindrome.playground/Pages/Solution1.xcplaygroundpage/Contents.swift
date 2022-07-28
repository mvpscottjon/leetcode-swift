/*
 125. Valid Palindrome

 QUESTION:
     A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

     Given a string s, return true if it is a palindrome, or false otherwise.
 
 RESULT:
     Runtime: 27 ms, faster than 50.59% of Swift online submissions for Valid Palindrome.
     Memory Usage: 14.9 MB, less than 82.20% of Swift online submissions for Valid Palindrome.
 */

func isPalindrome(_ s: String) -> Bool {
    let word = Array(s.lowercased().filter { c in c.isNumber || c.isLetter })
    
    if word.count < 1 { return true }
    
    var j = word.count - 1
    for i in 0...(word.count-1) {
        if i == j { break }
                
        if word[i] != word[j] {
            return false
        }
        
        j -= 1
    }
    
    return true
}

// Ans: true
isPalindrome("A man, a plan, a canal: Panama")

// Ans: false
isPalindrome("race a car")
//
// Ans: true
isPalindrome(" ")

// Ans: false
isPalindrome("0P")

// Ans: false
isPalindrome("abb")

// Ans: true
isPalindrome(".")

// Ans: false
// "7cird9xr9dxic7"
isPalindrome("\"7Ci`rd,9X;;r9,dX`iC7\"")

