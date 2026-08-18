List<int> maximo_minimo(List<int> numeros) {
  return [numeros.reduce((a, b) => a > b ? a : b), numeros.reduce((a, b) => a < b ? a : b)];
}

void main() {
  List<int> resultado = maximo_minimo([4, 7, 2, 8, 10, 3]);
  print(resultado);
}
