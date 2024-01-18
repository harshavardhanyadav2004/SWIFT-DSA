class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
         var curr = head
         var prev : ListNode?
         var next : ListNode?
         while (curr?.val ?? Int.min ) != Int.min
         {  
             next = curr?.next
             curr?.next = prev
             prev = curr
             curr = next

         }
         return prev
    }
}
