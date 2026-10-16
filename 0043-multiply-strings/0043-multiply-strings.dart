class Solution {
  String multiply(String num1, String num2) {
    if (num1 == "0" || num2 == "0") {
      return "0";
    }

    int n = num1.length;
    int m = num2.length;

    List<int> result = List.filled(n + m, 0);

    for (int i = n - 1; i >= 0; i--) {
      for (int j = m - 1; j >= 0; j--) {
        int digit1 = num1.codeUnitAt(i) - 48;
        int digit2 = num2.codeUnitAt(j) - 48;

        int product = digit1 * digit2;

        int sum = product + result[i + j + 1];

        result[i + j + 1] = sum % 10;
        result[i + j] += sum ~/ 10;
      }
    }

    return result.join('').replaceFirst(RegExp(r'^0+'), '');
  }
}