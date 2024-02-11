class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var maximum : Int  = Int.min
        for i in nums 
        {
            maximum = max(maximum,i)
        }
        for i in 0...maximum
        {
            if !nums.contains(i)
            {
                return i
            }
        }
        return maximum+1;

    }
}
