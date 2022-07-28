/*
 500. Keyboard Row

 QUESTION:
     Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

     In the American keyboard:

     the first row consists of the characters "qwertyuiop",
     the second row consists of the characters "asdfghjkl", and
     the third row consists of the characters "zxcvbnm".
 RESULT:
     Runtime: 3 ms, faster than 69.23% of Swift online submissions for Keyboard Row.
     Memory Usage: 13.9 MB, less than 100.00% of Swift online submissions for Keyboard Row.
 */

func findWords(_ words: [String]) -> [String] {
    let row1 = "qwertyuiop"
    let row2 = "asdfghjkl"
    let row3 = "zxcvbnm"
    
    let words = words.filter({ str in
        return contain(in: row1, targetString: str.lowercased()) ||
            contain(in: row2, targetString: str.lowercased()) ||
            contain(in: row3, targetString: str.lowercased())
    })
    
    return words
}

func contain(in word: String, targetString : String) -> Bool {
    for char in targetString {
        if !word.contains(char) { return false }
    }
    
    return true
}

// Ans: ["Alaska","Dad"]
findWords(["Hello","Alaska","Dad","Peace"])

// Ans: []
findWords(["omk"])

// Ans: ["adsdf","sfd"]
findWords(["adsdf","sfd"])

// Ans: ["a","b"]
findWords(["a","b"])

