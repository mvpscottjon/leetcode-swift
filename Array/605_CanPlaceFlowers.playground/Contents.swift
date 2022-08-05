/*
 605. Can Place Flowers
 QUESTION:
     You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

     Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.
 RESULT:
     Runtime: 98 ms, faster than 82.71% of Swift online submissions for Can Place Flowers.
     Memory Usage: 14.5 MB, less than 33.83% of Swift online submissions for Can Place Flowers.
 */

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var count = 0
    var newFlowerArray = flowerbed

    for i in 0...flowerbed.count-1 {
        if newFlowerArray[i] != 0 {
            continue
        }
        
        if i - 1 >= 0 {
            if newFlowerArray[i-1] != 0 {
                continue
            }
        }
        
        if i + 1 <= newFlowerArray.count-1 {
            if newFlowerArray[i+1] != 0 {
                continue
            }
        }
        
        newFlowerArray[i] = 1
        count += 1
    }
    
    return count >= n
}

// true
//canPlaceFlowers([1,0,0,0,1], 1)


// false
//canPlaceFlowers([1,0,0,0,1], 2)

// false
//canPlaceFlowers([1,0,0,0,0,1], 2)

// true
canPlaceFlowers([1,0,0,0,1,0,0], 2)
