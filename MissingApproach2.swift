class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
       let num = nums.sorted(by : <)
       for i in 0..<nums.count
       {
           if num[i] != i
           {
               return i
           }
       }
       return nums.count

    }
}
