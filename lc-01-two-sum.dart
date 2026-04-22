class Solution {
  List<int> twoSum(List<int> nums, int target) {
    if (nums.length == 0) {
      return [];
    }

    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        print("i: ${nums[i]}, j: ${nums[j]}");
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

void main() {
  List<int> nums = [0, 4, 3, 0];
  int target = 0;

  var result = Solution().twoSum(nums, target);
  print(result);
}
