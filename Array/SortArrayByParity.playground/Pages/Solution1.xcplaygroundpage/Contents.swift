/*
 * QUESTION
    905. Sort Array By Parity
     Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

     Return any array that satisfies this condition.
 
 * RESULTS:
     Runtime: 114 ms, faster than 5.93% of Swift online submissions for Sort Array By Parity.
     Memory Usage: 14.5 MB, less than 66.67% of Swift online submissions for Sort Array By Parity.
 
 * NOTE:
    Cause `inset(:)` will insert and move after elements, so time complexity is bad.
 */


func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var arr = [Int]()
    
    for num in nums {
        if num % 2 == 0 {
            arr.insert(num, at: 0)
        } else {
            arr.append(num)
        }
    }
    
    return arr
}

 
sortArrayByParity([1,1,2,4,3,7,9,10,42,37])


sortArrayByParity([3,1,2,4])

sortArrayByParity([0])
