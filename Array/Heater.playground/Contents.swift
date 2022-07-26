/*
* QUESTION:
 
     Winter is coming! During the contest, your first job is to design a standard heater with a fixed warm radius to warm all the houses.

     Every house can be warmed, as long as the house is within the heater's warm radius range.

     Given the positions of houses and heaters on a horizontal line, return the minimum radius standard of heaters so that those heaters could cover all houses.

     Notice that all the heaters follow your radius standard, and the warm radius will the same.
 
* RESULTS:
 
     Runtime: 399 ms, faster than 70.00% of Swift online submissions for Heaters.
     Memory Usage: 14.8 MB, less than 70.00% of Swift online submissions for Heaters.

*/

func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
    var minR = Int.min
    let houses = houses.sorted(by: { $0 < $1 })
    let heaters = heaters.sorted(by: { $0 < $1 })
    
    for house in houses {
        var left = 0
        var right = heaters.count - 1
        
        // house between heaters ==> house:6, heaters [3:10] ==> minR = 3 (3 < 4)
        while left + 1 < right {
            let mid = left + right / 2

            if house > heaters[mid] {
                left = mid
            } else if house < heaters[mid] {
                right = mid
            } else if house == heaters[mid] {
                left = mid
                right = mid
            }
        }
        minR = max(min(abs(house - heaters[left]), abs(house - heaters[right])), minR)
    }

    return minR
}

// Ans: 1
findRadius([1, 2, 3], [2])

// Ans: 1
findRadius([1, 2, 3, 4], [1, 4])

// Ans: 3
findRadius([1, 5], [2])

// Ans: 0
findRadius([1], [1])

// Ans: 3
findRadius([1, 5, 6, 10], [2, 4, 5, 7])

// Ans: 6
findRadius([1,2,3,5,6,7,10,15], [4,6,9])


