/*
 QUESTION:
     The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

     Note: A leaf is a node with no children.
 RESULT:

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


func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return helper(root: root)
}

func helper(root: TreeNode?) -> Int {
    guard let root = root else {
        return Int.max
    }

    if root.left == nil && root.right == nil {
        return 1
    }
    
    return min(helper(root: root.left), helper(root: root.right)) + 1
}

minDepth(tree1)
