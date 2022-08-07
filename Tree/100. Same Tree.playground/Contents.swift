/*
 100. Same Tree
 
 QUESTION:
     Given the roots of two binary trees p and q, write a function to check if they are the same or not.

     Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
 RESULT:
     Runtime: 3 ms, faster than 86.41% of Swift online submissions for Same Tree.
     Memory Usage: 14.2 MB, less than 33.33% of Swift online submissions for Same Tree.
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

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard p != nil || q != nil else { return true }
    
    if p?.val != q?.val { return false }
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}

let tree3 = TreeNode(3)
let tree2 = TreeNode(2)
let tree1 = TreeNode(1, tree2, tree3)


// true
print(isSameTree(tree1, tree1))

// false
print(isSameTree(tree1, tree2))
