// T(O): O(n), C(O): O(1) (but copy array needs O(n))

let nums = [41,33,17,80,61,5,55,77,1,54,31,55]
let nums2: [Int] = []
let nums3 = [1,51,2,3,4,5,61,24,55,55,67,89,1]
//let nums = [41,33,17,80, 15, 33]

func selectionSort(nums: [Int]) -> [Int] {
    guard nums.count > 0 else { return [] }
    var result = nums
    
    for i in 0...result.count - 1 {
        let minIndex = i
        if minIndex + 1 > result.count - 1 { break }
        
        for j in minIndex+1...result.count - 1 {
            if result[minIndex] > result[j] {
                // swap minIndex and index of smaller value
                (result[minIndex], result[j]) = (result[j], result[minIndex])
            }
        }
        
    }
    
    return result
}

selectionSort(nums: nums)
selectionSort(nums: nums2)
selectionSort(nums: nums3)
