func bubbleSort(array : [Int],size : Int) -> ()
{
    
    var resArray : [Int] = array 
    for i in 0...size-2 
    {
        for j in 0..<(size-i-1) 
        {
            if(resArray[j]>resArray[j+1])
            {
                let temp : Int = resArray[j]
                resArray[j] = resArray[j+1]
                resArray[j+1] = temp
            }
        }
    }
    print("The sorted array is ",resArray)
}
print("Enter the size of the array")
var size = Int(readLine()!)!
var array : [Int] = []
print("Enter the elements of the array")
for _ in 1...size 
{
    let value = Int(readLine()!)!
    array.append(value)
}
bubbleSort(array : array,size : size)
