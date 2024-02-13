class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for i in words
        {
            if String(i.reversed()) == i
            {
                return i
            }
        }
        return ""
    }
}
