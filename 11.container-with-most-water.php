/*
 * @lc app=leetcode id=11 lang=php
 *
 * [11] Container With Most Water
 */

// @lc code=start
class Solution {

/**
 * @param Integer[] $height
 * @return Integer
 */
function maxArea($height) {
    $h = [];
    for($i = 0; $i < count($height); $i++){
        if(!isset($h[$height[$i]])){
            $h[$height[$i]]['min'] = $h[$height[$i]]['max'] = $i;
        }else{
            $h[$height[$i]]['max'] = $i;
        }
    }

    $total_rain = 0;
    $preview = [];
    for($i = max($height); $i >= 1; $i--){
        if(!isset($h[$i])){
            continue;
        }
        if(empty($preview)){
            $preview = $h[$i];
        }
        $h[$i]['max'] = max([$h[$i]['max'], $preview['max']]);
        $h[$i]['min'] = min([$h[$i]['min'], $preview['min']]);
        $rain = ($h[$i]['max'] - $h[$i]['min']) * $i;
        $total_rain = ($total_rain < $rain) ? $rain : $total_rain;
        $preview = $h[$i];
    }
    return $total_rain;
}
}
// @lc code=end

