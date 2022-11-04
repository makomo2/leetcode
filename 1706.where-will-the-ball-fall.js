/*
 * @lc app=leetcode id=1706 lang=javascript
 *
 * [1706] Where Will the Ball Fall
 */

// @lc code=start
/**
 * @param {number[][]} grid
 * @return {number[]}
 */
 var findBall = function(grid) {
    root = [...Array(grid[0].length).keys()];
    for(i = 0; i < grid.length; i++){
        for(j = 0; j < root.length; j ++){
            r = root[j];
            if(r < 0) continue;
            if(grid[i][r] == -1){
                root[j] = (r > 0 && grid[i][r-1] == -1) ? r - 1 : -1;
            }else{
                root[j] = (r < (grid[i].length - 1) && grid[i][r+1] == 1) ? r + 1 : -1;
            }
        }
    }
    return root;
};
// @lc code=end

