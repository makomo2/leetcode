/*
 * @lc app=leetcode id=6 lang=javascript
 *
 * [6] Zigzag Conversion
 */

// @lc code=start
/**
 * @param {string} s
 * @param {number} numRows
 * @return {string}
 */
var convert = function(s, numRows) {
    if(numRows == 1) return s;
    output = new Array(numRows);
    pos = 0;    
    for(i = 0; i < s.length; i++){
        output[pos] = !output[pos] ? s[i] : output[pos] + s[i];
        pos = Math.floor(i / (numRows-1)) % 2 === 0 ? pos + 1: pos - 1;
    }
    return output.join('');    
};
// @lc code=end

