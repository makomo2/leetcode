/*
 * @lc app=leetcode id=26 lang=php
 *
 * [26] Remove Duplicates from Sorted Array
 */

// @lc code=start
class Solution {

/**
 * @param Integer[] $nums
 * @return Integer
 */
function removeDuplicates(&$nums) {
    $ans = [];
    for($i = 0; $i < count($nums); $i ++){
        $ans[$nums[$i]] = 1;
    }
    $nums = array_keys($ans);
    return count($nums);
}
}
// @lc code=end

