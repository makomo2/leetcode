#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
    paren = {'(' => ')', '{' => '}', '[' => ']'}
    stack = []
    for i in (0..s.size-1)
        if paren.key?(s[i])
            stack.push(paren[s[i]])
        else
            if s[i] != stack.pop()
                return false
            end
        end
    end
    return stack.size == 0
end
# @lc code=end

