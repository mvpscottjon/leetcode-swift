/*
 QUESTION:
     You are given an integer array cost where cost[i] is the cost of ith step on a staircase. Once you pay the cost, you can either climb one or two steps.

     You can either start from the step with index 0, or the step with index 1.

     Return the minimum cost to reach the top of the floor.
 RESULT:
     Runtime: 50 ms, faster than 12.92% of Swift online submissions for Min Cost Climbing Stairs.
     Memory Usage: 13.9 MB, less than 81.34% of Swift online submissions for Min Cost Climbing Stairs.
 */

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let n = cost.count

        var minDP = Array(repeating: Int.max, count: n + 1)
        minDP[0] = cost[0]
        minDP[1] = cost[1]
        
        for i in 2...n {
            if i == n {
                minDP[i] = min(minDP[i - 1],minDP[i - 2])
            } else {
                minDP[i] = min(minDP[i - 1],minDP[i - 2]) + cost[i]
            }
        }
        
        return min(minDP[n-1], minDP[n-2])
    }
}

// return 15
Solution().minCostClimbingStairs([10, 15, 20])

// return 6
Solution().minCostClimbingStairs([1,100,1,1,1,100,1,1,100,1])

// return 1
Solution().minCostClimbingStairs([0, 0, 1, 1])

// expect 2
Solution().minCostClimbingStairs([0,1,2,2])

// expect 0
Solution().minCostClimbingStairs([0, 100])
