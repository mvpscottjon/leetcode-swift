/*
 * QUESTION:
    905. Sort Array By Parity
     Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

     Return any array that satisfies this condition.
 
 * RESULTS:
     Runtime: 55 ms, faster than 92.59% of Swift online submissions for Sort Array By Parity.
     Memory Usage: 14.6 MB, less than 51.11% of Swift online submissions for Sort Array By Parity.
 */


func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var evenArr = [Int]()
    var oddArr = [Int]()

    for num in nums{
        if num % 2 == 0{
            evenArr.append(num)
        }else {
            oddArr.append(num)
        }
    }

    return evenArr + oddArr
}

 
sortArrayByParity([1,1,2,4,3,7,9,10,42,37])


sortArrayByParity([3,1,2,4])

sortArrayByParity([0])
