/*
 * @lc app=leetcode id=345 lang=javascript
 *
 * [345] Reverse Vowels of a String
 */

// @lc code=start
/**
 * @param {string} s
 * @return {string}
 */
 var reverseVowels = function(s) {
    let vowels = [];
    for(i = 0; i < s.length; i++){
        if(s[i].match(/[aiueoAIUEO]/)){
            vowels.push(s[i]);
        }
    }
    let output = '';
    for(i = 0; i < s.length; i++){
        output = (s[i].match(/[aiueoAIUEO]/)) ? output + vowels.pop() : output + s[i];
    }
    return output;
};
// @lc code=end

