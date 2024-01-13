import Swift 
class Parent 
{
    var name : String
    var value : Int
    init(name : String ,value : Int)
    {
        self.name = name 
        self.value = value 
        
    }
    func changeValues()
    {
        print("The name given in the class is \(self.name)")
        print("The value given in the class is \(self.value)")
    }
}
class Child : Parent 
{
    var subject : String 
    init(name : String ,value : Int ,subject : String )
    {
        self.subject = subject
        super.init(name : name , value : value )
    
    }
    override func changeValues()
    {
        print("The name given in the class is \(self.name)")
        print("The value given in the class is \(self.value)")
        print("The subject in the class is \(self.subject)")
    }
}
let obj = Child(name : "Harsha",value : 12,subject : "C - Language" )
obj.changeValues()
