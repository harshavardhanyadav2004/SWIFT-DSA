class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var array : [Int : Int] = [:]
        for i in nums
        {
            if array[i] == nil 
            {
                array[i]=1
            }
            else
            {
                array[i]?+=1
            }
        }
        var max : Int = Int.min
        var ele : Int = 0
        for i in array.keys
        {
            if array[i]! > nums.count/2
            {
                max = i
            }
        }
        return max 
    }
}
