/*
 * @lc app=leetcode id=3 lang=php
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
class Solution {

/**
 * @param String $s
 * @return Integer
 */
function lengthOfLongestSubstring($s) {
    $str = '';
    $ans = [];
    for($i = 0; $i < mb_strlen($s); $i++){
        $pos = mb_strpos($str, $s[$i]);
        if($pos !== false){
            $ans[] = mb_strlen($str);
            $str = substr($str,$pos+1);                
        }
        $str .= $s[$i];
    }
    $ans[] = mb_strlen($str);
    return max($ans);
}
}
// @lc code=end

