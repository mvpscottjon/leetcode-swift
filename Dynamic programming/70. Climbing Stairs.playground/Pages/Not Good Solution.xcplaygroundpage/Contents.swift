/*
 QUESTION:
     You are climbing a staircase. It takes n steps to reach the top.

     Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 RESULT:
    Time Limit Exceeded
 NOTE:
 */

class Solution {
    func climbStairs(_ n: Int) -> Int {
        return climb(i: 0, n: n)
    }

    func climb(i: Int, n: Int) -> Int {
        if i > n {
            return 0
        }

        if i == n {
            return 1
        }

        return climb(i: i + 1, n: n) + climb(i: i + 2, n: n)
    }
    
    // equal to
    func climbStairs2(_ n: Int) -> Int {
        return climb2(i: n, n: n)
    }
    
    func climb2(i: Int, n: Int) -> Int {
        if i < 0 {
            return 0
        }
        
        if i == 0 {
            return 1
        }
        
        return climb2(i: i - 1, n: n) + climb2(i: i - 2, n: n)
    }
}

let stairs = 9
//Solution().climbStairs(stairs)
//Solution().climbStairs2(stairs)
print(Solution().climbStairs(stairs) == Solution().climbStairs2(stairs))

