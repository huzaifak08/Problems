List<int> divisible = [];

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      divisible.add(i);
    }
  }

  print(divisible);

  return divisible.every((element) {
    if (element == 1 || element == n) {
      return true;
    }

    return false;
  });
}

void main() {
  int num = 11;

  bool result = isPrime(num);

  print(result);
}
