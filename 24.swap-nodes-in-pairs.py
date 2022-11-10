#
# @lc app=leetcode id=24 lang=python
#
# [24] Swap Nodes in Pairs
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def swapPairs(self, head):
        preview = top = ListNode(0)
        top.next = head
        while head:
            if head.next is None:
                break
            preview.next = head.next
            n = head.next.next
            head.next.next = head            
            head.next = n
            preview = head
            head = head.next
        return top.next        
# @lc code=end

