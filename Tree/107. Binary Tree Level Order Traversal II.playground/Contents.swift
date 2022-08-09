/*
 QUESTION:
    Given the root of a binary tree, return the bottom-up level order traversal of its nodes' values. (i.e., from left to right, level by level from leaf to root).
 
 RESULT:
     Runtime: 22 ms, faster than 20.93% of Swift online submissions for Binary Tree Level Order Traversal II.
     Memory Usage: 14.5 MB, less than 16.28% of Swift online submissions for Binary Tree Level Order Traversal II.
 
 NOTE:
    Could think about solution with recursion.
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

let treeNode3 = TreeNode(3)
let treeNode2 = TreeNode(2)
let treeNode1 = TreeNode(1, treeNode2, treeNode3)

class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var rs = [[Int]]()
        
        guard let root = root else {
            return rs
        }

        
        var currentLevel = [root]
        
        while !currentLevel.isEmpty {
            let values = currentLevel.map { $0.val }
            
            rs.insert(values, at: 0)
            currentLevel = currentLevel.flatMap { [$0.left, $0.right] }.compactMap { $0 }
        }
        
        return rs
    }
}

Solution().levelOrderBottom(treeNode1)
