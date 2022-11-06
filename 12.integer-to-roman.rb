#
# @lc app=leetcode id=12 lang=ruby
#
# [12] Integer to Roman
#

# @lc code=start
# @param {Integer} num
# @return {String}
# @param {Integer} num
# @return {String}
def int_to_roman(num)
    s = {
        1000=> 'M', 900 => 'CM', 500=> 'D', 400 => 'CD',
        100 => 'C', 90  => 'XC', 50 => 'L', 40  => 'XL',
        10  => 'X', 9   => 'IX', 5  => 'V', 4   => 'IV', 1 => 'I'
    }
    ans = ''
    for k in s.keys
        q = num / k
        ans += (s[k] * q)
        num -= (k * q)
    end
    return ans
end
# @lc code=end

