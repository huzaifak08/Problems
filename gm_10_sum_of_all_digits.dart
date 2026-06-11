int sumOfAllDigits(int num) {
  int result = 0;

  while (num > 0) {
    int remainder = num % 10;
    result = result + remainder;
    num = num ~/ 10;
  }

  return result;
}

void main() {
  int result = sumOfAllDigits(580);
  print(result);
}
