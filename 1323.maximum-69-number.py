#
# @lc app=leetcode id=1323 lang=python
#
# [1323] Maximum 69 Number
#

# @lc code=start
class Solution(object):
    def maximum69Number (self, num):
        """
        :type num: int
        :rtype: int
        """
        m = num
        num = str(num)
        l = len(num)
        for i in range(1, l + 1):
            n = int(num) + (3*10**(l - i)) * (-1 if num[i - 1] == '9' else 1)
            m = n if n > m else m
        return m
# @lc code=end

