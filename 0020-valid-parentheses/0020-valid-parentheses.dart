class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String ch = s[i];

      if (ch == '(' || ch == '{' || ch == '[') {
        stack.add(ch);
      } else {
        if (stack.isEmpty) {
          return false;
        }

        String last = stack.removeLast();

        if ((ch == ')' && last != '(') ||
            (ch == '}' && last != '{') ||
            (ch == ']' && last != '[')) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}