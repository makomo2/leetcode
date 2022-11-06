#
# @lc app=leetcode id=234 lang=ruby
#
# [234] Palindrome Linked List
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
# @param {ListNode} head
# @return {Boolean}
class ListNode_Ex < ListNode
    attr_accessor :back
    def initialize(_val = nil, _back = nil)
        @val = _val
        @back = _back
    end
end
def is_palindrome(head)
    reverse = get_reverse(head)
    return check(head, reverse)
end
def get_reverse(head, reverse = nil)
    if head.nil?
        return reverse
    end
    return get_reverse(head.next, ListNode_Ex.new(head.val, reverse))
end
def check(head, reverse)
    if head.nil? || reverse.nil?
        return true
    end
    if head.val != reverse.val
        return false
    end
    return check(head.next, reverse.back)
end

# @lc code=end

