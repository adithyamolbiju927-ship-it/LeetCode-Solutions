class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(' ');

    if (pattern.length != words.length) {
      return false;
    }

    Map<String, String> map1 = {};
    Map<String, String> map2 = {};

    for (int i = 0; i < pattern.length; i++) {
      String p = pattern[i];
      String w = words[i];

      if (map1.containsKey(p) && map1[p] != w) {
        return false;
      }

      if (map2.containsKey(w) && map2[w] != p) {
        return false;
      }

      map1[p] = w;
      map2[w] = p;
    }

    return true;
  }
}