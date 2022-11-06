#
# @lc app=leetcode id=9 lang=ruby
#
# [9] Palindrome Number
#

# @lc code=start
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x = x.to_s.chars
    s = x.size
    if s == 1
        return true
    end
    if (s % 2) != 0
        x.delete_at(s / 2)
    end
    x = x.each_slice(s / 2).to_a
    x[0] == x[1].reverse ? true : false    
end
# @lc code=end

