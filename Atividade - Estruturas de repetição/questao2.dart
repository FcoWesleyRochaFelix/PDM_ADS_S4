void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  print('Elementos menores que 5:');
  for (int elemento in a) {
    if (elemento < 5) {
      print(elemento);
    }
  }
}
