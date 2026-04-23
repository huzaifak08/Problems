class Solution {
  bool isPalindromeSelf(int x) {
    if (x < 0) {
      return false;
    }

    String val = x.toString();

    if (val.length == 1) {
      return true;
    }

    print(val.length);

    // for (int i = 0; i < val.length; i++) {
    //   print("val at i: ${val[i]}");
    // }

    // for (int j = (val.length - 1); j >= 0; j--) {
    //   print("val at j: ${val[j]}");
    // }
    int i = 0;
    int j = val.length - 1;

    while (i < j) {
      print("Val at i: ${val[i]} and Val at j: ${val[j]}");
      if (val[i] != val[j]) {
        return false;
      }

      i++;
      j--;
    }

    return true;
  }

  // ========== OPTIMISED WAY ================

  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }

    int orignal = x;
    int rev = 0;

    while (x > 0) {
      // Num divided by 10, the mod will be its own last digit:
      int lastdigit = x % 10;
      // rev is a variable where we store the digits from left-right:
      rev = (rev * 10) + lastdigit;
      // Num divided by 10, the reminder is num itslef other than last digit which come as modulus:
      x ~/= 10;
    }

    return orignal == rev;
  }
}

void main() {
  var result = Solution().isPalindrome(-121);
  print(result);
}
