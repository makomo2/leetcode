#
# @lc app=leetcode id=39 lang=python
#
# [39] Combination Sum
#

# @lc code=start
class Solution(object):
    output = []
    def makeCombination(self, candidates, target, combination = []):
        if target == 0:
            self.output.append(sorted(combination))
            return
        candidates = list(filter(lambda c: c <= target, candidates))
        for c in candidates:
            if target >= c:
                self.makeCombination(candidates, target - c, combination + [c])

    def combinationSum(self, candidates, target):
        """
        :type candidates: List[int]
        :type target: int
        :rtype: List[List[int]]
        """
        self.output = []
        self.makeCombination(candidates, target)
        return list(map(list, set(map(tuple, self.output))))
# @lc code=end

