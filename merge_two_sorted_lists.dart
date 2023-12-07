
  class ListNode {
    int val;
    ListNode? next;
   ListNode([this.val = 0, this.next]);
 }
 
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    var head = ListNode(0);
    var curr = head;

    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        curr.next = list1;
        list1 = list1.next;
      } else {
        curr.next = list2;
        list2 = list2.next;
      }
      curr = curr.next!;
    }

    if (list1 != null) {
      curr.next = list1;
    } else if (list2 != null) {
      curr.next = list2;
    }

    return head.next;
  }
}
