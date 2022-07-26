/*
* QUESTION:
    Given a binary array nums, return the maximum number of consecutive 1's in the array.

* RESULTS:
     Runtime: 259 ms, faster than 75.33% of Swift online submissions for Max Consecutive Ones.
     Memory Usage: 14.2 MB, less than 63.67% of Swift online submissions for Max Consecutive Ones.
*/

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var tmpCount:Int = 0
    var maxCount:Int = 0
    
    for num in nums {
        guard num == 1 else {
            tmpCount = 0
            continue
        }
        tmpCount += 1
        
        if tmpCount > maxCount {
            maxCount = tmpCount
        }
    }
    
    return maxCount
}

findMaxConsecutiveOnes([1, 0, 0, 1, 1, 1, 0, 1, 1])
