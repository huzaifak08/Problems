int loopLimit(int a, int b) {
  if (a == 0 || b < a) {
    return b;
  } else if (b == 0 || a < b) {
    return a;
  }
  return 0;
}

int greatestCommonDivisor(int a, int b) {
  int divisor = 1;

  int length = loopLimit(a, b);

  for (int i = 1; i <= length; i++) {
    if ((a % i == 0) && (b % i == 0)) {
      if (i > divisor) {
        divisor = i;
      }
    }
  }

  return divisor;
}

int greatestCommonDivisorOpt(int a, int b) {
  while (b != 0) {
    int remainder = a % b;
    a = b;
    b = remainder;
  }

  return a;
}

void main() {
  int a = 105;
  int b = 252;

  int result = greatestCommonDivisor(a, b);
  print(result);

  int optResult = greatestCommonDivisor(a, b);
  print("OPT- RESULT: $optResult");
}
