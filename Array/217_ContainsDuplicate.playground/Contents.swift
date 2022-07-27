/*
 217. Contains Duplicate
 
 *QUESTION:
    Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 *Result:
     Runtime: 678 ms, faster than 53.77% of Swift online submissions for Contains Duplicate.
     Memory Usage: 18.7 MB, less than 5.95% of Swift online submissions for Contains Duplicate.
 */

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict: [Int: Int] = [:]
    for num in nums {
        if dict[num] != nil {
            return true
        } else {
            dict[num] = 1
        }
    }
    
    return false
}

// Ans: true
containsDuplicate([1,2,3,1])

// Ans: false
containsDuplicate([1,2,3,4])

// Ans: true
containsDuplicate([1,1,1,3,3,4,3,2,4,2])

