class Node 
{  
    //The members in the Node are the LeftChild and rightChild and the data part of a particular node 
    var data : Int = 0
    var leftChild : Node!
    var rightChild : Node!
    init(data : Int)
    {
        self.data = data
    }
}
/* Class Tree Consists of the Traversal algorithms */
class Tree
{   
    //We have created a member Node named root with the optional value nil
    var root: Node?
    init()
    {   
    
        //Initializing the root of the tree as nil
        self.root = nil
    }
    //Function to perform inorder traversal of tree 
    
    /* Left - root - right
       
       
       ! operator is used to unwrap the value even if there is nothing it takes nil as operator
    */
    
    func inorder(root : Node!)
    {
        if root == nil
        {
            return
        }
    //We have implemented the inorder with the help of recursion in swift
    inorder(root : root.leftChild)
    print(root.data,separator: "",terminator : " ")
    inorder(root: root.rightChild )
    }
      //Function to perform the preOrder traversal of tree
      //root-left-right
      
      
    func preOrder(root : Node!)
    {
        
        if(root==nil)
        {
            return
        }
        
        print(root.data,separator:"",terminator:" ")
        preOrder(root : root.leftChild)
        preOrder(root : root.rightChild)
    }
    //Function to perform the postOrder traversal of Tree
    //left - right - root Here also we use ! operator to handle the nil case also otherwise it gives an error in swift
    func postOrder(root : Node!)
    {
        if root == nil 
        {
            return
        }
        postOrder(root : root.leftChild)
        postOrder(root : root.rightChild)
        print(root.data , separator:"",terminator:" ")
    }
    
}
//Creating an instance for the class Tree
let obj = Tree()
//Creating a newnode for the root of the tree
var p = Node(data : 1)               
/*     1  
     /    \     
    2      3    
  /   \   / \      
 4     5 6   7  */
//Assigning the created node to the root of the tree
obj.root = p   
//Assigning the root node to a duplicate
var duplicate = obj.root
p = Node ( data : 2 )
//Assigning the root node's leftChild
duplicate?.leftChild = p
p = Node(data : 3)
//Assigning the root node's rightChild
//Inserting some more nodes to form a binary tree
duplicate?.rightChild = p
var anotherDuplicate = duplicate?.leftChild
p = Node(data : 4)
//Here we used ? to unwrap an optional value for the given node
anotherDuplicate?.leftChild = p
p = Node(data : 5)
anotherDuplicate?.rightChild = p 
anotherDuplicate = duplicate?.rightChild 
p = Node(data : 6)
anotherDuplicate?.leftChild = p 
p = Node(data : 7)
anotherDuplicate?.rightChild = p
print("The Inorder Traversal of tree is ",separator:"",terminator:"\n")
/*Calling the inorder Traversal function and we used ?? operator to provide optional value 
because it shows an error if there is nil passed in the function*/
obj.inorder(root : obj.root ?? nil )
print("\nThe preOrder Traversal of tree is ",separator:"",terminator:"\n")
//Callling the preOrder Traversal of the tree
obj.preOrder(root : obj.root ?? nil)
print("\nThe postOrder Traversal of tree is ",separator : "",terminator:"\n")
//Calling the post order Traversal of a tree
obj.postOrder(root : obj.root ?? nil)
