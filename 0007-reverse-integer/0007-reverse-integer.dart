class Solution {
  int reverse(int x) {
  
  int result = 0;

  while (x != 0) {
    int digit = x.remainder(10); 
    x = x ~/ 10;

    result = result * 10 + digit;

    if (result > 2147483647 || result < -2147483648) {
      return 0;
    }
  }

  return result;

}
}