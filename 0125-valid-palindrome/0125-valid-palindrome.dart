class Solution {
  bool isPalindrome(String s) {
    String cleaned = s
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]'), '');

    int left = 0;
    int right = cleaned.length - 1;

    while (left < right) {
      if (cleaned[left] != cleaned[right]) {
        return false;
      }

      left++;
      right--;
    }

    return true;
  }
}

