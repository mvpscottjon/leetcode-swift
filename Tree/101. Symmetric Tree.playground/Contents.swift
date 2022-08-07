/*
 101. Symmetric Tree

 QUESTION:
    Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

 RESULT:
     Runtime: 9 ms, faster than 94.04% of Swift online submissions for Symmetric Tree.
     Memory Usage: 14.3 MB, less than 13.65% of Swift online submissions for Symmetric Tree.
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

func isSymmetric(_ root: TreeNode?) -> Bool {
    guard root != nil else { return true}
    
    return isSymmetricHelper(root?.left, root?.right)
}

func isSymmetricHelper(_ left: TreeNode?, _ right: TreeNode?) -> Bool{
    guard left != nil || right != nil else { return true}
    
    if left?.val == right?.val {
        return isSymmetricHelper(left?.left, right?.right) && isSymmetricHelper(left?.right, right?.left)
    } else {
        return false
    }
}

let tree3 = TreeNode(3)
let tree2 = TreeNode(2)
let tree1 = TreeNode(1, tree2, tree3)


isSymmetric(tree1)
