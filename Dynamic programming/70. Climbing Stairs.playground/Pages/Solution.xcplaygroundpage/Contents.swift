
/*
 QUESTION:
     You are climbing a staircase. It takes n steps to reach the top.

     Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 RESULT:
     Runtime: 5 ms, faster than 34.28% of Swift online submissions for Climbing Stairs.
     Memory Usage: 13.7 MB, less than 37.59% of Swift online submissions for Climbing Stairs.
 NOTE:
 */


class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 0 { return 0 }
        if n == 1 { return 1 }
     
        var prev = 1, current = 1, total = 0
        
        //f(n) = f(n-1) + f(n-2)
        
        // n = 1 ==> rs = 1
        // n = 2 ==> rs = 1 + 1 = 2
        // n = 3 ==> rs = 1 + 2 = 3
        // n = 4 ==> rs = 3 + 2 = 5
        
        for _ in 2...n {
            total = prev + current
            
            prev = current
            current = total
        }
        
        return total
    }
}

Solution().climbStairs(4)
