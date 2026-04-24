class Solution {
  Map<String, int> romanTable = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int findValInTable(String a) {
    var result = romanTable.entries.firstWhere((element) => element.key == a);

    return result.value;
  }

  int combineChars(String a, String b) {
    int valA = findValInTable(a);
    int valB = findValInTable(b);

    return valB - valA;
  }

  bool needCombination(String a, String b) {
    int valA = findValInTable(a);
    int valB = findValInTable(b);

    if (valA < valB) {
      return true;
    }
    return false;
  }

  int romanToIntSelf(String s) {
    int result = 0;

    for (int i = 0; i < s.length; i++) {
      if (i + 1 < s.length && needCombination(s[i], s[i + 1])) {
        result = result + combineChars(s[i], s[i + 1]);
        i++;
      } else {
        int value = findValInTable(s[i]);
        result = result + value;
      }
    }

    return result;
  }

  // ================ OPTIMIZED WAY ================
  int romanToInt(String s) {
    int total = findValInTable(s[s.length - 1]);
    for (int i = s.length - 2; i >= 0; i--) {
      int current = findValInTable(s[i]);
      int right = findValInTable(s[i + 1]);

      if (current < right) {
        total -= current;
      } else {
        total += current;
      }
    }
    return total;
  }
}

void main() {
  String input = "MCMXCIV";
  var result = Solution().romanToInt(input);
  print(result);
}
