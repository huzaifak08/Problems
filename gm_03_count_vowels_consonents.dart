List<String> vowelsList = ['a', 'e', 'i', 'o', 'u'];

bool isVowel(String i) {
  if (vowelsList.contains(i)) {
    return true;
  }
  return false;
}

Map<String, int> countVowelsConsonents(String str) {
  int vowels = 0, consonents = 0;
  for (int i = 0; i < str.length; i++) {
    if (isVowel(str[i])) {
      vowels++;
    } else {
      consonents++;
    }
  }
  return {'vowels': vowels, 'consonents': consonents};
}

void main() {
  String str = "kamran";
  final result = countVowelsConsonents(str);
  print(result);
}
