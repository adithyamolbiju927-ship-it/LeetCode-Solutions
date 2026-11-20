class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    List<List<int>> result = [];

    void backtrack(int start, int remaining, List<int> current) {
      if (remaining == 0) {
        result.add(List.from(current));
        return;
      }

      if (remaining < 0) {
        return;
      }

      for (int i = start; i < candidates.length; i++) {
        current.add(candidates[i]);

        backtrack(i, remaining - candidates[i], current);

        current.removeLast();
      }
    }

    backtrack(0, target, []);

    return result;
  }
}