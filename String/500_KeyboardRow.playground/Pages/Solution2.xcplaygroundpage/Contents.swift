/*
 500. Keyboard Row

 QUESTION:
     Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

     In the American keyboard:

     the first row consists of the characters "qwertyuiop",
     the second row consists of the characters "asdfghjkl", and
     the third row consists of the characters "zxcvbnm".
 RESULT:
     Runtime: 5 ms, faster than 41.54% of Swift online submissions for Keyboard Row.
     Memory Usage: 14.5 MB, less than 60.00% of Swift online submissions for Keyboard Row.
 */

func findWords(_ words: [String]) -> [String] {
    var firstRowDict = [Character: Int]()
    var secondRowDict = [Character: Int]()
    var thirdRowDict = [Character: Int]()
    
    for char in "qwertyuiop" {
        firstRowDict[char] = 1
    }
    
    for char in "asdfghjkl" {
        secondRowDict[char] = 1
    }
    
    for char in "zxcvbnm" {
        thirdRowDict[char] = 1
    }
    
    var answerArray = [String]()
    for word in words {
        if contain(in: firstRowDict, word: word) {
            answerArray.append(word)
        } else if contain(in: secondRowDict, word: word) {
            answerArray.append(word)
        } else if contain(in: thirdRowDict, word: word) {
            answerArray.append(word)
        }
    }
    
    return answerArray
}

func contain(in rowDict: [Character: Int], word: String) -> Bool {
    for char in word.lowercased() {
        if rowDict[char] == nil { return false }
    }
    
    return true
}

// Ans: ["Alaska","Dad"]
//findWords(["Hello","Alaska","Dad","Peace"])

// Ans: []
//findWords(["omk"])

// Ans: ["adsdf","sfd"]
//findWords(["adsdf","sfd"])

// Ans: ["a","b"]
findWords(["a","b"])

