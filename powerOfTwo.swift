class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var pow : Int = 1 
        while pow <= n
        {
            if pow == n
            {
                return true
            }
            pow*=2
        }
        return false
    }
}
