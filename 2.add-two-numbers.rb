#
# @lc app=leetcode id=2 lang=ruby
#
# [2] Add Two Numbers
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
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    ans = ListNode.new()
    add(l1,l2,ans)
    return ans
end
def add(l1, l2, ans = nil)
    if l1.nil? && l2.nil? then
        return
    end
    val1 = val2 = 0
    if !(l1.nil?) then
        val1 = l1.val
        l1 = l1.next
    end
    if !l2.nil? then
        val2 = l2.val
        l2 = l2.next
    end
    ans.val += val1 + val2
    if !l1.nil? || !l2.nil? || ans.val / 10 > 0
        
        new_ans = ListNode.new()
        if ans.val / 10 > 0
            new_ans.val = ans.val / 10
            ans.val = ans.val % 10
        end
        ans.next = new_ans
        ans = new_ans
    end
    add(l1, l2, ans) 
end
# @lc code=end

