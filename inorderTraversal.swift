class Solution {
    var array : [Int] = []
    func iterOrder(root : TreeNode?) ->()
    {
        if root==nil
        {
            return
        }
        iterOrder(root : root?.left)
        array.append(root!.val)
        iterOrder(root : root?.right)
    }
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        iterOrder(root : root)
        return array
    }
}
