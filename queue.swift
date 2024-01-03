class Queue
{
    //Declaring the size of the queue
    var size : Int = 0
    //Declaring the collection for the implementation of the queue
    var queue : Array<Int> = Array()
    init(size : Int )
    {
    //Initializing the size and the queue
        self.size = size 
    }
    func enqueue(ele : Int)
    {
        //Using then count of the queue to know the no of elements 
        if(queue.count==size)
        { 
            print("Queue is full")
            return
        }
        //Pushing the elements in the queue
        queue.append(ele)
    }
    
    func dequeue()
    {   
       //Checking the queue is empty or not
        if(queue.isEmpty)
        {
            print("Queue is Empty")
            return
        }
        //The deletion in the queue takes place from the front end 
        print("The deleted element in the queue is \(queue.remove(at:0))")
    }
    func display()
    {   
        //Checking whether the queue is empty or not
        if(queue.isEmpty)
        {
            print("The queue is Empty")
            return
        }
        print("The queue is \(queue)")
    }
    func front()
    {
        if(queue.isEmpty)
        {
            print("The queue is Empty")
            return
        }
        //The first function is used to get the first element in the queue
        print("The Front element in the queue is \(queue.first!)")
    }
}
print("Enter the size of the queue")
if let input = readLine()
{
    if let n = Int(input)
    {
        //Passing the array and size into the class Queue
        let obj = Queue(size : n)
        obj.enqueue(ele : 5)
        obj.enqueue(ele : 6)
        obj.enqueue(ele : 7)
        obj.display()
        obj.enqueue(ele : 8)
        obj.enqueue(ele : 9)
        obj.display()
        obj.dequeue()
        obj.display()
        obj.front()
        obj.display()
        obj.dequeue()
        obj.display()
        
    }
}
