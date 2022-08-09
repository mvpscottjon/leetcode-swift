/*
 QUESTION:
     Given a binary tree, determine if it is height-balanced.

     For this problem, a height-balanced binary tree is defined as:

     a binary tree in which the left and right subtrees of every node differ in height by no more than 1.
 RESULT:
     Runtime: 80 ms, faster than 10.76% of Swift online submissions for Balanced Binary Tree.
     Memory Usage: 14.7 MB, less than 87.97% of Swift online submissions for Balanced Binary Tree.
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkHeight(node: root) != -1
    }
    
    private func checkHeight(node: TreeNode?) -> Int {
        if node == nil { return 0 }
        let left = checkHeight(node: node?.left)
        let right = checkHeight(node: node?.right)
        
        if left == -1 || right == -1 {
            return -1
        }
        
        if abs(left - right) > 1 {
            return -1
        }
        
        return max(left, right) + 1
    }
}


Solution().isBalanced(treeNode1)
