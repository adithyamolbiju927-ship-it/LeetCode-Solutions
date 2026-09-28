/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    var dummy = ListNode(0), cur = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry > 0) {
      int sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry;
      carry = sum ~/ 10;
      cur = cur.next = ListNode(sum % 10);
      l1 = l1?.next;
      l2 = l2?.next;
    }
    return dummy.next;
  }
}
