import Swift 
func selectionSort(array : [Int] , size : Int , index : Int) -> Int
{
    var min : Int = array[index]
    var minIndex : Int = index
    for i in (index+1)..<size 
    {
        if array[i]<min {
            min = array[i]
            minIndex = i
        }
    }
    return minIndex
}
print("Enter the size of the array")
let  size = Int(readLine()!)!
var array : [Int] = []
print("Enter the elements of the array")
for _ in 1...size 
{
    let value  = Int(readLine()!)!
    array.append(value)
    
}
print("Performing the selectionSort in the array")
for i in 0..<size
{
    let index = selectionSort(array : array,size : size,index : i)
    let temp = array[index]
    array[index] = array[i]
    array[i] = temp
}
print("The array after sorting is ",array)
