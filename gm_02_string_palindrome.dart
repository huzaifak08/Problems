bool isPalindrome(String str) {
  int i = 0;
  int j = str.length - 1;

  while (i < j) {
    if (str[i] == str[j]) {
      i++;
      j--;
      continue;
    } else {
      return false;
    }
  }
  return true;
}

void main() {
  String str = "madam";
  bool result = isPalindrome(str);
  print(result);
}
