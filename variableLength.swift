func variableLength( array : Int...) -> Int 
{
    var sum : Int = 0 
    for i in array 
    {
        sum+=i
    }
    return sum
}
print("Variable length arguments in swift are ")
let sum : Int = variableLength(array : 1,2,3,43,4)
print(sum)
