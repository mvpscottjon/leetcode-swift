/*
 226. Invert Binary Tree
 
 QUESTION:
    Given the root of a binary tree, invert the tree, and return its root.
 RESULT:
     Runtime: 0 ms, faster than 100.00% of Swift online submissions for Invert Binary Tree.
     Memory Usage: 14 MB, less than 75.24% of Swift online submissions for Invert Binary Tree.
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

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil}

    (root.left, root.right) = (root.right, root.left)
    
    invertTree(root.left)
    invertTree(root.right)
    
    return root
}


invertTree(tree1)
