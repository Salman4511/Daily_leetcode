class Solution {
  int singleNumber(List<int> nums) {
    int res = 0;
    for (int i = 0; i < nums.length; i++) {
      int flag = 0;
      for (int j = 0; j < nums.length; j++) {
        if (i != j && nums[i] == nums[j]) {
          flag = 1;
        }
      }
      if (flag == 0) {
        res = nums[i];
      }
    }
    return res;
  }
}
