int factorial(int n) {
  int result = n;
  for (int i = 0; i < n; i++) {
    result = result * (n - 1);
    n--;
  }
  return result;
}

void main() {
  int result = factorial(6);
  print(result);
}
