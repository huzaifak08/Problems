bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  // A prime num has only 2 factors:
  int count = 0;

  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }

  return count == 2;
}

void main() {
  int num = 9;
  bool result = isPrime(num);
  print(result);
}
