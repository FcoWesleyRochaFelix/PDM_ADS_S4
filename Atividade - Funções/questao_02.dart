int soma(int a, int b) {
  return a + b;
}

double media(List<int> numeros) {
  int total = 0;
  for (int num in numeros) {
    total = soma(total, num);
  }
  return total / numeros.length;
}

void main() {
  double resultado = media([10, 20, 30]);
  print(resultado);
}
