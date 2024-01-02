final class Stack 
{
    var size : Int = 0
    //Declaring a size 
    var stack : Array<Int> = Array()
    //Declaring the Array to perform the stack operations
    init( size: Int)
    {
         //Initialising the size and the stack from parameters outside the class
         self.size = size;
    }
    func pushEle(ele : Int) 
    {  
       //Using the count function te check the no of elements in the stack
       if(stack.count==size)
       {
           print("The stack is Full")
           return
       }
       //Inserting the element in the stack 
       stack.append(ele)
    }
    func display()
    {    
          //isEmpty return true if the  stack is empty
        if(stack.isEmpty)
        {
            print("The stack is Empty")
            return
        }
        
        print("The stack is \(stack)")
    }
    func pop()
    {
        if(stack.isEmpty)
        {
            print("The stack is empty")
            return
        }
        /*The First Element in the Array is the last element in the stack and the first 
        element in the stack is last element in the Array*/
        print("The deleted element is \(stack.remove(at:stack.count-1))")
    }
    func peek()->Int 
    {
    
    //The peek element in the stack is the last element in the array
        if(stack.isEmpty)
        {
            print("The stack is empty")
            return -1
        }
        return stack[stack.count-1]
        
    }
}
print("Enter the size of the stack")

if let input = readLine()
{
    if let n = Int(input)
    {
       
       
       //We have initialized the stack's size with the init function
       let obj = Stack(size : n) 
       obj.pushEle(ele:2)
       obj.display()
       obj.pushEle(ele:3)
       obj.pushEle(ele:4)
       obj.display()
       obj.pushEle(ele:5)
       obj.pushEle(ele:6)
       obj.display()
       obj.pushEle(ele:7)
       print("Popping out the element in the stack")
       obj.pop()
       obj.display()
       if obj.peek() != -1
       {
           print("The peek element in the stack is \(obj.peek())")
       }
       obj.display()   

    }
}
