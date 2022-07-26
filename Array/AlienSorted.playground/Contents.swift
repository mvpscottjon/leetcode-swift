/*
    Runtime: 24 ms, faster than 26.76% of Swift online submissions for Verifying an Alien Dictionary.
    Memory Usage: 14.2 MB, less than 95.77% of Swift online submissions for Verifying an Alien Dictionary.
    Time Complexity: O(n), Space Complexity: O(n)
*/
                                                                    
                                                                    

// Parameters
// true
//let words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"

// false
//let words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"

// false
//let words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"

// false
let words = ["zirqhpfscx","zrmvtxgelh","vokopzrtc","nugfyso","rzdmvyf","vhvqzkfqis","dvbkppw","ttfwryy","dodpbbkp","akycwwcdog"], order = "khjzlicrmunogwbpqdetasyfvx"

func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    let charToOrder = Dictionary(uniqueKeysWithValues: order.enumerated().map { ($0.1, $0.0) })

    for i in 0..<words.count-1 {
        let currentWord = Array(words[i])
        let nextWord = Array(words[i+1])
        
        var j = 0
        let min = min(currentWord.count, nextWord.count)
        
        while j < min {
            let currentOrder = charToOrder[currentWord[j]]
            let nextOrder = charToOrder[nextWord[j]]

            guard currentOrder! != nextOrder!  else {
                j += 1
                continue
            }
            
            if currentOrder! > nextOrder! {
                return false
            } else {
                break
            }
        }
        
        // when apple and app ==> false
        if j == nextWord.count && currentWord.count > nextWord.count {
            return false
        }
    }
    
    return true
}

print(isAlienSorted(words, order))


