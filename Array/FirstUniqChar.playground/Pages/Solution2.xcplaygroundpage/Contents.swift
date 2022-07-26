/*
 Q. 387
 Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

 Return any array that satisfies this condition.
 
 ***RESULTS:
 Runtime: 76 ms, faster than 92.39% of Swift online submissions for First Unique Character in a String.
 Memory Usage: 14.8 MB, less than 36.68% of Swift online submissions for First Unique Character in a String.
 */

func firstUniqChar(_ s: String) -> Int {
    let stringArray = Array(s)
    var dict : [Character: Int] = [:]
    
    for i in 0...stringArray.count-1 {
        let targetString = stringArray[i]
        var count = dict[targetString] ?? 0
        
        if count > 2 {continue}
        
        for j in 0...stringArray.count-1 {
            let compareString = stringArray[j]
            
            if compareString == targetString {
                count += 1
                // cache to dict
                dict[compareString] = count
                
                if count > 2 { break}
            }
            
            if j == stringArray.count-1 && count < 2{
                return i
            }
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
