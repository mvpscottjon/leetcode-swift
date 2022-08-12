let sortedArray = [0, 5, 15, 78, 149, 290]

// T(O) ==> O(n)
func simpleSearch(arr: [Int], target: Int) -> Int {
    for (i,num) in arr.enumerated() {
        if num == target {
            return i
        }
    }
    
    return -1
}

// T(O) ==> O(log n)
func binarySearch(arr: [Int], target: Int) -> Int {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if arr[mid] > target {
            right = mid - 1
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            return mid
        }
    }
    
    
    return -1
}

simpleSearch(arr: sortedArray, target: 290)

binarySearch(arr: sortedArray, target: 290)
