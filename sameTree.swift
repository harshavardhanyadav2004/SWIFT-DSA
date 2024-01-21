class Solution {
    func iterOrder( root1 : TreeNode? , root2 : TreeNode?) -> Bool
    {
        if root1 == nil && root2 == nil 
        {
            return true
        }
        if root1 == nil || root2 == nil
        {
            return false
        }
        return root1?.val == root2?.val && (iterOrder(root1 : root1?.left, root2 : root2?.left)) && (iterOrder(root1 : root1?.right , root2 : root2?.right))
    }
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return iterOrder( root1 : p, root2 : q)
    }
}
