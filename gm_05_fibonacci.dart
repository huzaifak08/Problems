List<int> fibonacciSequence(int n) {
  if (n < 1) {
    print("Wrong Input");
  }

  if (n == 1) {
    return [0];
  }

  // First two are always 0 , 1 for n greater than 1
  List<int> result = [0, 1];

  // Start the loop from 3rd index in result list:
  int i = 2;

  // Variable just to access the correct the index in result list:
  int count = n;

  while (i < n) {
    int tempRes = result[n - count] + result[n - (count - 1)];
    result.add(tempRes);

    i++;
    count--;
  }

  return result;
}

void main() {
  int num = 10;
  final result = fibonacciSequence(num);
  print(result);
}
