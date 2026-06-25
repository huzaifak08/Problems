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

void main() {
  // int factorialResult = factorial(6);

  List<int> fibonacciResult = fibonacci(7);
  print(fibonacciResult);
}
