import Swift
public class Student
{
    func printPattern(size : Int) -> ()
    {
        for i in 1...size 
        {
            for _ in 1...i 
            {
                print("*",separator:" ",terminator:" ")
            }
            print()
        }
    }
}
internal class Teacher : Student 
{
    override func printPattern(size : Int) -> ()
    {
        for _ in 1...size 
        {
            for _ in 1...size
            {
                print("*",separator : "",terminator : " ")
            }
            print()
        }
    }
}
let obj = Teacher()
obj.printPattern(size : 5)
