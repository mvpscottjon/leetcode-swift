// T(O): O(n ^ 2) , C(O): O(1)

var arr1 = [41,52,17,80,61,5,55,77,1,54,31,55]
var arr2: [Int] = []
var arr3 = [1,51,2,3,4,5,61,24,55,55,67,89,1]

func insertionSort(numbs: inout [Int]) -> [Int] {
    guard numbs.count > 0 else { return [] }
    for i in 0...numbs.count - 1 {
        var position = i

        while position > 0 {
            if numbs[position] < numbs[position - 1] {
                // compare previous and swap if needed
                (numbs[position], numbs[position - 1]) = (numbs[position - 1], numbs[position])
            }
            position -= 1
        }
        
        
    }
    return numbs
}

insertionSort(numbs: &arr1)
insertionSort(numbs: &arr2)
insertionSort(numbs: &arr3)
