bool isLeapYear(int year) {
  if ((year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))) {
    return true;
  }
  return false;
}

void main() {
  int year = 2024;
  bool result = isLeapYear(year);
  print(result);
}
