/*
 QUESTION:
     Given the root of a binary tree, return the length of the diameter of the tree.

     The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

     The length of a path between two nodes is represented by the number of edges between them.
 RESULT:
     Runtime: 44 ms, faster than 40.00% of Swift online submissions for Diameter of Binary Tree.
     Memory Usage: 14.3 MB, less than 90.77% of Swift online submissions for Diameter of Binary Tree.
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

let treeNode6 = TreeNode(6)

let treeNode5 = TreeNode(5, treeNode6, nil)
let treeNode4 = TreeNode(4)
let treeNode3 = TreeNode(3)
let treeNode2 = TreeNode(2, treeNode4, treeNode5)
let treeNode1 = TreeNode(1, treeNode2, treeNode3)

var diameter = 0

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    maxDepth(node: root)
    return diameter
}


func maxDepth(node: TreeNode?) -> Int {
    if node == nil { return 0 }
    
    let left = maxDepth(node: node?.left)
    let right = maxDepth(node: node?.right)
    
    diameter = max(diameter, left + right)
    return max(left, right) + 1
}

diameterOfBinaryTree(treeNode1)
