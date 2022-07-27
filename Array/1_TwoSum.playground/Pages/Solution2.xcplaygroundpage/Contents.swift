/*
 1. Two Sum
 QUESTION:
     Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

     You may assume that each input would have exactly one solution, and you may not use the same element twice.

     You can return the answer in any order.

 RESULT:
     Runtime: 148 ms, faster than 11.65% of Swift online submissions for Two Sum.
     Memory Usage: 14 MB, less than 95.97% of Swift online submissions for Two Sum.
 */

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i == j { continue }
            
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
}

// Ans: [0, 1]
twoSum([2, 7, 11, 15], 9)

// Ans: [1, 2]
twoSum([3, 2, 4], 6)

// Ans: [0, 1]
twoSum([3, 3], 6)
