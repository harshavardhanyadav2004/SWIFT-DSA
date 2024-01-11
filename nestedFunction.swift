func returnFunc(array : [Int], size : Int) -> ((Int,Int)->Int)
{
    var max : Int = Int.min
    var min : Int = Int.max
    for i in array 
    {
        if i > max { max = i }
        if i < min { min = i }
    }
    func minMax(min : Int , max : Int) -> Int 
    {
        return min+max
    }
    return minMax
}
print("Enter the size of the array")
let size = Int(readLine()!)!
var array : [Int] = []
print("Enter the elements in the array")
for _ in 1...size 
{
  let value : Int = Int(readLine()!)!
  array.append(value);
}
print(returnFunc(array : array , size : size))

