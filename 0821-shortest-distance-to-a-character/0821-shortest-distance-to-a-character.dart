class Solution {
  List<int> shortestToChar(String s, String c) {
    List<int> result = List.filled(s.length, s.length);

    int prev = -s.length;

    // Left to right
    for (int i = 0; i < s.length; i++) {
      if (s[i] == c) {
        prev = i;
      }

      result[i] = i - prev;
    }

    prev = 2 * s.length;

    // Right to left
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == c) {
        prev = i;
      }

      result[i] = result[i] < prev - i
          ? result[i]
          : prev - i;
    }

    return result;
  }
}