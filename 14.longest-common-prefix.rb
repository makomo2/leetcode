#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    ans = strs[0]
    for s in strs
        for i in (0..ans.size - 1)
            if s[i].nil? || ans[i] != s[i]
                ans = ans.slice(0, i)
                break
            end
        end
    end
    return ans    
end
# @lc code=end

