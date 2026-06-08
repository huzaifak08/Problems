int factorial(int n) {
  int result = n;

  for (int i = 1; ((i <= n) && (i != n)); i++) {
    // condition (i != n): because (n-i) will return 0 and * it with result make everything 0
    result = result * (n - i);
  }

  return result;
}

void main() {
  int num = 6;
  int result = factorial(num);
  print("Result: $result");
}
