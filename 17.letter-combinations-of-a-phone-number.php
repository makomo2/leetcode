/*
 * @lc app=leetcode id=17 lang=php
 *
 * [17] Letter Combinations of a Phone Number
 */

// @lc code=start
class Solution {

/**
 * @param String $digits
 * @return String[]
 */
function letterCombinations($digits, $comb = []) {
    if(empty($digits)) return $comb;

    $comb = empty($comb) ? [''] : $comb;

    $phone = [
        '2' => ['a', 'b', 'c'], 
        '3' => ['d', 'e', 'f'],
        '4' => ['g', 'h', 'i'],
        '5' => ['j', 'k', 'l'],
        '6' => ['m', 'n', 'o'],
        '7' => ['p', 'q', 'r', 's'],
        '8' => ['t', 'u', 'v'],
        '9' => ['w', 'x', 'y', 'z'],
    ];

    $result = [];
    $first = $phone[$digits[0]];
    for($i = 0; $i < count($comb); $i++){
        for($j = 0; $j < count($first); $j++){
            $result[] = $comb[$i] . $first[$j];
        }
    }
    $digits = substr($digits,1);
    return self::letterCombinations($digits, $result);
}
}
// @lc code=end

