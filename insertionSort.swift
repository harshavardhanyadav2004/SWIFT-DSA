import Swift 
func insertionSort( array : [Int], size : Int)
{  
    var array = array
    for i in 1..<size 
    {
        var j : Int = i-1
        let temp : Int = array[i]
        while j>=0 && array[j]>temp
        {
            array[j+1] = array[j]
            j-=1
           
        }
        j+=1
        array[j] = temp
    }
    print(array)
}
print("Enter the size of the array\n")
let size = Int(readLine()!)!
print("Enter the elements of the array\n")
var array : [Int] = []

for _ in 1...size 
{
    let value = Int(readLine()!)!
    array.append(value)
    
}
print("After sorting the elements in the array")
insertionSort(array : array , size : size)
