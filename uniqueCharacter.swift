class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dictionary : [Character : Int] = [:]
        for i in s
        {
            if dictionary[i] == nil
            {
                dictionary[i] = 1
            }
            else 
            {
                dictionary[i]?+=1
            }

        }
        var index : Int = 0
        for i in s
        {
            if dictionary[i] == 1 
            {  
                return index 
            }
            index+=1
        }
        return -1
    }
}
