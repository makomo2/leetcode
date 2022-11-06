#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target, index = -1)
    max = 0
    if index == -1
        max = nums.max
    end
    (index+1..nums.size-1).each{|i|
        if index == -1
            if max + nums[i] >= target
                ans = two_sum(nums, target, i)
                if ans.size == 2
                    return ans
                end
            end
        else
            if nums[index] + nums[i] == target
                return [index, i]
            end
        end
    }
    return []
end
# @lc code=end

