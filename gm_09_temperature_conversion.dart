double tempConversion({required double temp, required bool isCelsius}) {
  if (isCelsius) {
    double fahrenheit = (temp * 1.8) + 32;
    return fahrenheit;
  } else {
    double celsius = (temp - 32) * (0.5555555556);
    return celsius;
  }
}

void main() {
  double result = tempConversion(temp: -40, isCelsius: true);
  print(result);
}
