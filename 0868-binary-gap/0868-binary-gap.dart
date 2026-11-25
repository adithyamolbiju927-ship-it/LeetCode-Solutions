
class Solution {
  int binaryGap(int n) {
    int maxGap = 0;
    int lastPosition = -1;
    int position = 0;

    while (n > 0) {
      if (n % 2 == 1) {
        if (lastPosition != -1) {
          maxGap = maxGap > position - lastPosition
              ? maxGap
              : position - lastPosition;
        }

        lastPosition = position;
      }

      n ~/= 2;
      position++;
    }

    return maxGap;
  }
}