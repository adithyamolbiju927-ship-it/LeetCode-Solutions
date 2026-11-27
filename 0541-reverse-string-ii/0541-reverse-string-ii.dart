class Solution {
  String reverseStr(String s, int k) {
    List<String> chars = s.split('');

    for (int i = 0; i < chars.length; i += 2 * k) {
      int left = i;
      int right = (i + k - 1 < chars.length)
          ? i + k - 1
          : chars.length - 1;

      while (left < right) {
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;

        left++;
        right--;
      }
    }

    return chars.join('');
  }
}