public class A 
{
    var temp : String = "Harsha"
    func printFunc() -> ()
    {
        print("The name is ",temp)
    }
}
internal class B : A 
{
    var temp1 : String = "Vardhan"
    override func printFunc()
    {
        print("The name here is ", temp1,temp)
    }
}
var obj = B()
obj.printFunc()
