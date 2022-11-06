#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    list1 = ListNode.new(-101,list1)
    merge(list1, list2)
    return list1.next
end
def merge(list1, list2)
    if list2.nil?
        return
    end
    next2 = list2
    if  (list1.val <= list2.val) && 
        (list1.next.nil? || list2.val < list1.next.val)
        next2 = list2.next
        list2.next = list1.next
        list1.next = list2
    end
    return merge(list1.next, next2)
end
# @lc code=end

