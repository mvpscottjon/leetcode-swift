/*
 121. Best Time to Buy and Sell Stock

 QUESTION:
     You are given an array prices where prices[i] is the price of a given stock on the ith day.

     You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

     Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 RESULT:
    Time Limit Exceeded
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var maxProfit = 0
        
        
        // price[i + 1] - price[i], i = 1...n-1
        for i in 0...n-1 {
            
            var j = i + 1
            
            while j <= n-1 {
                maxProfit = max(maxProfit, prices[j] - prices[i])
                
                j += 1
            }
        }
        
        return maxProfit
    }
}

// expect 5(buy at day 2, sell at day 5)
//Solution().maxProfit([7,1,5,3,6,4])

// expect 0(In this case, no transactions are done and the max profit = 0.)
//Solution().maxProfit([7,6,4,3,1])

// expect 3
Solution().maxProfit([2,1,4])

// expect 8
Solution().maxProfit([2,1,4,5,2,9,7])
