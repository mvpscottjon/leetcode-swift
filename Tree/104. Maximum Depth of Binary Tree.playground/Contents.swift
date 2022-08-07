/*
 104. Maximum Depth of Binary Tree
 
 QUESTION:
     Given the root of a binary tree, return its maximum depth.

     A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 RESULT:
     Runtime: 50 ms, faster than 13.14% of Swift online submissions for Maximum Depth of Binary Tree.
     Memory Usage: 14.8 MB, less than 28.65% of Swift online submissions for Maximum Depth of Binary
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

let tree3 = TreeNode(3)
let tree2 = TreeNode(2)
let tree1 = TreeNode(1, tree2, tree3)


func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    return helper(root: root)
}

func helper(root: TreeNode?) -> Int {
    guard let root = root else {
        return Int.min
    }

    if root.left == nil && root.right == nil {
        return 1
    }
    
    return max(helper(root: root.left), helper(root: root.right)) + 1
}

maxDepth(tree1)
