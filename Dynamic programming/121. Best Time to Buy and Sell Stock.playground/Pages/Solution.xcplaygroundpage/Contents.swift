/*
 121. Best Time to Buy and Sell Stock

 QUESTION:
     You are given an array prices where prices[i] is the price of a given stock on the ith day.

     You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

     Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 RESULT:
     Runtime: 1264 ms, faster than 41.53% of Swift online submissions for Best Time to Buy and Sell Stock.
     Memory Usage: 17.9 MB, less than 57.89% of Swift online submissions for Best Time to Buy and Sell Stock.
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var maxProfit = 0
        // cache maxValue after specify index
        // for example, in array: [7, 1, 5, 3, 6, 4], maxValue after `index 2` is `6`, maxValue after `index 4` is `4`
        var dp = Array(repeating: Int.min, count: n)
        var i = n - 1
        
        while i >= 0 {
            if i == n-1 {
                dp[i] = prices[i]
            } else {
                dp[i] = max(dp[i+1], prices[i])
            }
            
            i -= 1
        }
        
        
        for i in 0...n-1 {
            maxProfit = max(dp[i] - prices[i], maxProfit)
        }
        
        return maxProfit
    }
}

// expect 5(buy at day 2, sell at day 5)
Solution().maxProfit([7,1,5,3,6,4])

// expect 0(In this case, no transactions are done and the max profit = 0.)
//Solution().maxProfit([7,6,4,3,1])

// expect 3
//Solution().maxProfit([2,1,4])

// expect 8
//Solution().maxProfit([2,1,4,5,2,9,7])
