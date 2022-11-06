/*
 * @lc app=leetcode id=22 lang=javascript
 *
 * [22] Generate Parentheses
 */

// @lc code=start
/**
 * @param {number} n
 * @return {string[]}
 */
var generateParenthesis = function(n) {
    var output = []
    var brackets = [''];
    while(true){
        if(brackets.length == 0){
            break;
        }
        var b   = brackets.shift();
        var left = (b.match(/\(/g) || []).length;
        var right = b.length - left;
        if(right >= n){
            output.push(b);
            continue;
        }
        if(left < n){
            brackets.push(b + '(');
        }
        if(left > right){
            brackets.push(b + ')');
        }
    }
    return output;    
};
// @lc code=end

