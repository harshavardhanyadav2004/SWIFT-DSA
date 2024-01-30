class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var array : [Int : Int] = [:]
        for i in nums 
        {
            if array[i] == nil 
            {
                array[i] = 1
            }
            else 
            {
                array[i]?+=1
            }
            if array[i]==2 
            { 
                return true 
            }
        }
        return false
    }
}
