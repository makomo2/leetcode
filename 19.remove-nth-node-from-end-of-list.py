#
# @lc app=leetcode id=19 lang=python
#
# [19] Remove Nth Node From End of List
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
import _ctypes
class Solution(object):
    def removeNthFromEnd(self, head, n):
        id_list = []
        def bi(id):
            return _ctypes.PyObj_FromPtr(id)

        def remove(head, n):
            id_list.append(id(head))
            if not head.next:
                index = len(id_list) - n - 1
                if index >= 0:
                    target = bi(id_list[index])
                    target.next = target.next.next
                    return bi(id_list[0])
                else:
                    return bi(id_list[1]) if len(id_list) > 1 else None
            return remove(head.next,n)
        
        return remove(head,n)
        
# @lc code=end

