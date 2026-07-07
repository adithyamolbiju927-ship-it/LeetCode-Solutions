class Solution {
  bool isPalindrome(int x) {
    String str=x.toString();
    return str==str.split('').reversed.join();
  }
}