class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    int originalColor = image[sr][sc];

    if (originalColor == color) {
      return image;
    }

    void dfs(int r, int c) {
      if (r < 0 ||
          c < 0 ||
          r >= image.length ||
          c >= image[0].length ||
          image[r][c] != originalColor) {
        return;
      }

      image[r][c] = color;

      dfs(r + 1, c);
      dfs(r - 1, c);
      dfs(r, c + 1);
      dfs(r, c - 1);
    }

    dfs(sr, sc);

    return image;
  }
}