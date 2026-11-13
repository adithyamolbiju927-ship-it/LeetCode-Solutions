/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? swapPairs(ListNode? head) {
    ListNode dummy = ListNode(0);
    dummy.next = head;

    ListNode? current = dummy;

    while (current?.next != null && current?.next?.next != null) {
      ListNode first = current!.next!;
      ListNode second = first.next!;

      first.next = second.next;
      second.next = first;
      current.next = second;

      current = first;
    }

    return dummy.next;
  }
}