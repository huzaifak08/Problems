import 'dart:math';

int factorial(int n) {
  int result = n;
  for (int i = 0; i < n; i++) {
    result = result * (n - 1);
    n--;
  }
  return result;
}

List<int> fibonacci(int n) {
  List<int> result = [0];

  if (n < 0 || n == 0 || n == 1) {
    return result;
  } else if (n == 2) {
    return result = [0, 1];
  } else {
    result = [0, 1];
    for (int i = 2; i < n; i++) {
      int temp = result[i - 2] + result[i - 1];
      result.add(temp);
    }
  }

  return result;
}

bool isPrime(int n) {
  int count = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }

  if (count == 2) {
    return true;
  }
  return false;
}

int greatestCommonDivisor(int a, int b) {
  int result = 0;

  int length = min(a, b);
  for (int i = 1; i <= length; i++) {
    if ((a % i == 0) && (b % i == 0)) {
      if (result < i) {
        result = i;
      }
    }
  }

  return result;
}

int sumOfAllDigits(int n) {
  int result = 0;
  while (n > 0) {
    int reminder = n % 10;
    result = result + reminder;
    n = n ~/ 10;
  }

  return result;
}

void main() {
  // int factorialResult = factorial(6);

  // List<int> fibonacciResult = fibonacci(7);

  // bool primeResult = isPrime(10);

  // int gcdResult = greatestCommonDivisor(20, 50);

  int sumResult = sumOfAllDigits(111);
  print(sumResult);
}
