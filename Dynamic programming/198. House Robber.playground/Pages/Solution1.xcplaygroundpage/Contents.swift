/*
 QUESTION:
     You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

     Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.
 RESULT:
     Runtime: 9 ms, faster than 20.51% of Swift online submissions for House Robber.
     Memory Usage: 14.3 MB, less than 20.77% of Swift online submissions for House Robber.
 */

class Solution {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp = Array(repeating: Int.min, count: nums.count)
        var maxMoney = 0
        
        if n == 2 {
            return max(nums[0], nums[1])
        } else if n == 1 {
            return nums[0]
        } else if n == 0 {
            return 0
        }

        var i = n - 1
        
        dp[n-1] = nums[n-1]
        dp[n-2] = nums[n-2]
 
        maxMoney = max(dp[n-1], dp[n-2])
        
        while i >= 0 {
            var j = i
            
            while j <= n - 1 {
                if j == i || j == i + 1 {
                    j += 1
                    continue
                }

                dp[i] = max(dp[j] + nums[i], dp[i])
                maxMoney = max(dp[i], maxMoney)
                
                j += 1
            }
            
            i -= 1
        }
        
        return maxMoney
    }
}

// Ans: 4(1+3)
print(Solution().rob([1,2,3,1]))

// Ans: 12(2+9+1)
Solution().rob([2,7,9,3,1])

// Ans: 2
print(Solution().rob([2, 1]))

// Ans: 3
print(Solution().rob([1,3,1]))
