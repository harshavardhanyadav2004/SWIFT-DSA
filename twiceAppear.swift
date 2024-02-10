class Solution {
    func repeatedCharacter(_ s: String) -> Character {
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
            if dictionary[i]==2
            {
                return i
            }
        }
        return "a"
    }
}
