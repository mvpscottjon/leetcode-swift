/*
 QUESTION:
     You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

     Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.
 RESULT:
     Runtime: 0 ms, faster than 100.00% of Swift online submissions for House Robber.
     Memory Usage: 14.2 MB, less than 40.68% of Swift online submissions for House Robber.
 NOTE:
    Need Practice more.
 */

class Solution {
    func rob(_ nums: [Int]) -> Int {
        var current = 0
        var previous = 0
        
        for num in nums {
            // dp[i] = max(dp[i-1], dp[i-2] + num[i])
            let temp = current
            // c = 2, p = 0
            // c = 7, p = 2
            // c = 11, p = 7
            // c = 11, p = 11
            // c = 12, p = 11
            current = max(current, previous + num)
            previous = temp
        }

        return current
    }
}

// Ans: 4(1+3)
print(Solution().rob([1,2,3,1]))

// Ans: 12(2+9+1)
//Solution().rob([2,7,9,3,1])

// Ans: 2
//print(Solution().rob([2, 1]))

// Ans: 3
//print(Solution().rob([1,3,1]))
