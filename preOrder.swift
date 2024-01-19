class Solution {
    var list : [Int] = []
    func iterOrder(root : TreeNode? )->()
    {
        if root==nil 
        {
            return 

        }
        list.append(root!.val)
        iterOrder( root : root?.left)
        iterOrder(root : root?.right)
    }
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        iterOrder(root : root)
        return list

        
    }
}
