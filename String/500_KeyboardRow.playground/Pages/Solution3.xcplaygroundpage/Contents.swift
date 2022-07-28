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
     Memory Usage: 14.6 MB, less than 24.62% of Swift online submissions for Keyboard Row.
 NOTE:
    Answer from https://github.com/soapyigu/LeetCode-Swift/blob/master/String/KeyboardRow.swift
 */

func findWords(_ words: [String]) -> [String] {
    let row1 = "qwertyuiop"
    let row2 = "asdfghjkl"
    let row3 = "zxcvbnm"
    
    return words.filter { str in row1.contains(str.lowercased()) || row2.contains(str.lowercased()) || row3.contains(str.lowercased())
    }
}


extension String {
    func contains(_ word: String) -> Bool {
        return word.filter { c in !self.contains(c)}.count == 0
    }
}

// Ans: ["Alaska","Dad"]
findWords(["Hello","Alaska","Dad","Peace"])

// Ans: []
findWords(["omk"])

// Ans: ["adsdf","sfd"]
findWords(["adsdf","sfd"])

// Ans: ["a","b"]
findWords(["a","b"])

