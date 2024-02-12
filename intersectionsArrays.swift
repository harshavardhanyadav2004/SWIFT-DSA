class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var array : [Int] = [  ]
        for i in nums1
        {
            if nums2.contains(i)
            {  
                if !array.contains(i)
                {
                   array.append(i)
                }
            }
        }
        return array
    }
}
