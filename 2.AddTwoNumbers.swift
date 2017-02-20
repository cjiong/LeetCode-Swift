
// 2. Add Two Numbers

// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

// Example:

// Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)

// Output: 7 -> 0 -> 8

//soltion

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var sum = 0
        let dummy = ListNode(0)
        var node = dummy
        var l1 = l1
        var l2 = l2
        
        while l1 != nil || l2 != nil || carry != 0 {
            sum = carry
            
            if l1 != nil {
                sum += l1!.val
                l1 = l1!.next
            }
            
            if l2 != nil {
                sum += l2!.val
                l2 = l2!.next
            }
            
            carry = sum / 10
            sum = sum % 10
            
            node.next = ListNode(sum)
            node = node.next!
        }
        
        return dummy.next
    }
}
