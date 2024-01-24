class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var dict : [ Int : Int] = [:]
        for i in nums 
        {
            if dict[i] == nil 
            { dict[i] = 1 }
            else 
            {  dict[i]?+=1 }
            
        }
        print(dict)
        var array : [Int] = [ ]
        for i in nums {
           if dict[i] ?? 0 > (nums.count)/3
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
