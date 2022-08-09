/*
 QUESTION:
    Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).
 RESULT:
     Runtime: 17 ms, faster than 50.28% of Swift online submissions for Binary Tree Level Order Traversal.
     Memory Usage: 14.2 MB, less than 59.54% of Swift online submissions for Binary Tree Level Order Traversal.
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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var rs = [[Int]]()
        guard let root = root else {
            return rs
        }

        var currentLevelNodes = [root]

        while !currentLevelNodes.isEmpty {
            let currentLevelValues = currentLevelNodes.map { $0.val }

            rs.append(currentLevelValues)

            currentLevelNodes = currentLevelNodes.flatMap { [$0.left, $0.right] }.compactMap { $0 }
        }

        return rs
    }
}

Solution().levelOrder(treeNode1)


