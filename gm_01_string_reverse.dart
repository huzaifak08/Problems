String reverseString(String str) {
  String result = "";

  for (int i = str.length - 1; i >= 0; i--) {
    print(i);
    print(str[i]);
    result += str[i];
  }

  return result;
}

void main() {
  String str = "HUZAIFA";
  // "AFIAZUH"
  String result = reverseString(str);
  print(result);
}
