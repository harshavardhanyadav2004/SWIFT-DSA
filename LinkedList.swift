class Node 
{

//We have declared a Class Node with the data and address of the next node
    var data : Int = 0
    var next : Node!
    /*The ! Operator is used to give a optional value . we have not mentioned any optional Value so 
    it takes optional value as nil*/
    init(data : Int)
    {
        self.next = nil
        self.data = data
    }
}
//We have declared a linked list class along with it's operations 
class LinkedList
{
    var head : Node?
    //We have declared a head node by initialising it to nil 
    init()
    {
        self.head = nil
    }
    //It inserts the node at the beginning of the LinkedList
    func insertAtBeg( data  : Int )
    {     
        //Creating newnode from the given the data 
        let newnode = Node(data : data)
        if head == nil 
        {
            head = newnode
            return
        }
        newnode.next = head
        head = newnode
    }
    func traversal()
    {   //Traversing the linked List
        var newnode = head
        if head == nil
        {
            print("LinkedList is Empty")
            return
        }
        /*If the nil comes when we do traversal it gives an error in the swift if we doesn't give 
         the optional value*/
        print("The Linked List is ",separator:"",terminator:"\n")
        while((newnode ?? nil) != nil )
        {  
        
             /*Here we have given a optional value as minimum value of Int otherwise we will
             get an error*/
            print((newnode?.data ?? Int.min),separator : " ",terminator : "->")
            newnode = newnode?.next
        }
        print()
    }
    //Inserting the node at the end of the LinkedList
    func insertAtEnd(data : Int)
    {
        let newnode = Node(data : data)
        //assigning the head to the duplicate
        var duplicate = head
        if head == nil
        {
            head = newnode
            return
        }
        /*Here we gave an optional value as nil if the nil comes then 
        the optional will handle it in swift*/
        while((duplicate?.next ?? nil ) != nil )
        {
           duplicate = duplicate?.next
        }
        duplicate?.next = newnode
        
    }
    //Deleting the node at the beginnig of the LinkedList
    func deleteAtBeg()
    {
        if head==nil
        {
            print("Linked List is Empty")
            return
        }
        head = head?.next
        
    }
    //Deleting the Node at the end of the the LinkedList
    func deleteAtEnd()
    {
        if head == nil || head?.next == nil 
        {
            head = nil
            return
        }
        var prev:Node?
        var curr = head
        //Traversing upto the end of the of the LinkedList and appending it
        while ((curr?.next ?? nil) != nil )
        {
            prev = curr
            curr = curr?.next
        }
        prev?.next = curr?.next
        
    }
    
    
    
}
//Creating an instance for the Linked List 
var obj = LinkedList()
var p = Node(data : 5)
//assigning the value for the head node
obj.head = p
obj.insertAtBeg(data : 6)
obj.insertAtBeg(data : 7)
obj.traversal()
obj.insertAtEnd(data : 8)
obj.traversal()
obj.deleteAtBeg()
obj.traversal()
obj.deleteAtEnd()
obj.traversal()
