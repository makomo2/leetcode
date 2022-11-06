#
# @lc app=leetcode id=846 lang=python
#
# [846] Hand of Straights
#

# @lc code=start
import collections
class Solution(object):
    def isNStraightHand(self, hand, groupSize):
        hand = sorted(hand)
        if (len(hand) % groupSize) != 0:
            return False
        hand = dict(collections.Counter(hand))

        while True:
            if len(hand) == 0:
                return True
            k = min(hand.keys())
            for i in range(groupSize):
                if k not in hand.keys():
                    return False
                hand[k] -= 1
                if hand[k] == 0:
                    hand.pop(k)
                k += 1
        return True
        
# @lc code=end

