/*
 QUESTION:
     Given the root of a binary tree, return the sum of all left leaves.

     A leaf is a node with no children. A left leaf is a leaf that is the left child of another node.
 RESULT:
     Runtime: 11 ms, faster than 78.95% of Swift online submissions for Sum of Left Leaves.
     Memory Usage: 14.3 MB, less than 21.05% of Swift online submissions for Sum of Left Leaves.
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
    private var sum = 0
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        helper(node: root, isLeftNode: false)
        return sum
    }
    
    private func helper(node: TreeNode?, isLeftNode:Bool) {
        if node == nil { return }
        
        // run left child
        helper(node: node?.left, isLeftNode: true)
        // run right child
        helper(node: node?.right, isLeftNode: false)
        
        if node?.left == nil && node?.right == nil && isLeftNode {
            sum += node!.val
        }
    }
}

Solution().sumOfLeftLeaves(treeNode1)
