/*
* QUESTION:
     You are given n points in the plane that are all distinct, where points[i] = [xi, yi]. A boomerang is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).

     Return the number of boomerangs.
 
* RESULTS:
     Runtime: 321 ms, faster than 33.33% of Swift online submissions for Number of Boomerangs.
     Memory Usage: 14.1 MB, less than 100.00% of Swift online submissions for Number of Boomerangs.
*/

import Darwin

func numberOfBoomerangs(_ points: [[Int]]) -> Int {
    var count = 0
    for i in 0...points.count-1 {
        let p1 = points[i]
        // [Distance: Count]
        var distanceDict = [Int: Int]()
        var j = 0

        while j < points.count {
            let p2 = points[j]
            
            if p1 == p2 {
                j += 1
                continue
            }
            
            let distance = (p2[0] - p1[0]) * (p2[0] - p1[0]) + (p2[1] - p1[1]) * (p2[1] - p1[1])
                                                                
            if let value = distanceDict[distance] {
                distanceDict[distance] = value + 1
            } else {
                distanceDict[distance] = 1
            }

            j += 1
        }
        
        count += calculateCount(distanceDict: distanceDict)
    }

    return count
}

func calculateCount(distanceDict:[Int: Int]) -> Int {
    var count = 0
    for (k,v) in distanceDict {
        if k != 0 && v > 1 {
            count += v * (v-1)
        }
    }

    return count
}

// Ans: 2
//numberOfBoomerangs([[0,0],[1,0],[2,0]])

// Ans: 2
//numberOfBoomerangs([[1,1],[2,2],[3,3]])

// Ans: 0
//numberOfBoomerangs([[1,1]])

// Ans: 20
numberOfBoomerangs([[0,0],[1,0],[-1,0],[0,1],[0,-1]])

// Ans: 24
numberOfBoomerangs([[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[8,8]])

