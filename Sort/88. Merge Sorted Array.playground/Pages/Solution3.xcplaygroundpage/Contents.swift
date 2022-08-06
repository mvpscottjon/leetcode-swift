/*
 88. Merge Sorted Array
 
 QUESTION:
     You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

     Merge nums1 and nums2 into a single array sorted in non-decreasing order.

     The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 RESULT:
     Runtime: 15 ms, faster than 30.11% of Swift online submissions for Merge Sorted Array.
     Memory Usage: 14.1 MB, less than 47.00% of Swift online submissions for Merge Sorted Array.
 */

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1
    var j = n - 1
    
    while i >= 0 || j >= 0 {
        if j < 0 || i >= 0 && nums1[i] > nums2[j] {
            nums1[i + j + 1] = nums1[i]
            i -= 1
        } else {
            nums1[i + j + 1] = nums2[j]
            j -= 1
        }
    }
}

// MARK: - Test cases

// [1, 2, 2, 3, 5, 6]
var arr1 = [1,2,3,0,0,0]
merge(&arr1, 3, [2, 5, 6], 3)

print(arr1)

// [1]
var arr2 = [1]
merge(&arr2, 1, [], 0)
print(arr2)

// [1]
var arr3: [Int] = []
merge(&arr3, 0, [1], 1)
print(arr3)

// [-1,0,0,1,2,2,3,3,3]
var arr4: [Int] = [-1,0,0,3,3,3,0,0,0]
merge(&arr4, 6, [1,2,2], 3)
print(arr4)

var arr5: [Int] = [1,2,3,4,5,6]
merge(&arr5, 6, [], 0)
print(arr5)
