class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        var sum : Int = 0 
        for i in 1...num
        {
            if num%i == 0 
            {
                sum+=i
            }
        }
        return sum-num==num
    }
}
