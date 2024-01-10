import Swift 
func countFrequency(dict : [Int:Int], array : [Int])->()
{
    var dict = dict 
    for i in array
    {
       if !(dict.keys.contains(i))
       {
           dict[i] = 1
       }
       else
       {
           let val : Int = dict[i]!
           dict.updateValue(val+1,forKey : i)
       }
    }
    print("The dictionary is ",dict)
}
print("Enter the size of the array")
let size = Int(readLine()!)!
print("Enter the elements of the array")
var array : [Int] = []
for _ in 1...size 
{
    let value : Int = Int(readLine()!)!
    array.append(value)
}
var dict : [Int : Int] = [:]
countFrequency(dict : dict,array : array)
