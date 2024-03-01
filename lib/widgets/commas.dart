String addCommasToNumberString3(String numberString) {
  String result = '';
  int commaCount = 0;

  for (int i = numberString.length - 1; i >= 0; i--) {
    result = numberString[i] + result;
    commaCount++;
    if (commaCount % 3 == 0 && i > 0) {
      result = ',' + result;
    }
  }

  return result;
}
