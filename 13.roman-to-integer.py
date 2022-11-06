#
# @lc app=leetcode id=13 lang=python
#
# [13] Roman to Integer
#

# @lc code=start
class Solution(object):
    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        replace = {'IV':'O', 'IX':'P', 'XL':'Q', 'XC':'R', 'CD':'S', 'CM':'T'}
        value = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000, 'O':4, 'P':9, 'Q':40, 'R':90,'S':400, 'T':900}
        for k, v in replace.items():
            s = s.replace(k,v)
        total = 0
        for v in s:
            total += value[v]
        return total
        
        
# @lc code=end

