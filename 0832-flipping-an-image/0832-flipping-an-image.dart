class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    for (int i = 0; i < image.length; i++) {
      image[i] = image[i].reversed.toList();

      for (int j = 0; j < image[i].length; j++) {
        image[i][j] = image[i][j] == 0 ? 1 : 0;
      }
    }

    return image;
  }
}