/*
 Q. 387
    Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
 
 ***RESULTS:
 Runtime: 166 ms, faster than 24.46% of Swift online submissions for First Unique Character in a String.
 Memory Usage: 14.6 MB, less than 45.11% of Swift online submissions for First Unique Character in a String.
 */

func firstUniqChar(_ s: String) -> Int {
    let stringArray = Array(s)
    var dict: [Character: Int] = [:]
    
    for i in 0...stringArray.count-1 {
        let targetString = stringArray[i]

        if let value = dict[targetString] {
            dict[targetString] = value + 1
        } else {
            dict[targetString] = 1
        }
    }

    for i in 0...stringArray.count-1 {
        let targetString = stringArray[i]

        if let value = dict[targetString], value < 2 {
            return i
        }
    }
    
    return -1
}

// 0
firstUniqChar("leetcode")

// 2
firstUniqChar("loveleetcode")
//
//// -1
firstUniqChar("aabb")
//
//// 4
firstUniqChar("ddbba")
//
//// 4
firstUniqChar("ddbbaeccc")
