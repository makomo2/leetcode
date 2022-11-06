/*
 * @lc app=leetcode id=217 lang=php
 *
 * [217] Contains Duplicate
 */

// @lc code=start
class Solution {
    /**
    * @param Integer[] $nums
    * @return Boolean
    */
    function containsDuplicate($nums) {
        $ary = [];
        for($i = 0; $i < count($nums); $i++){
            if(isset($ary[$nums[$i]])) return true;
            $ary[$nums[$i]] = true;
        }
        return false;
    }
}
// @lc code=end

