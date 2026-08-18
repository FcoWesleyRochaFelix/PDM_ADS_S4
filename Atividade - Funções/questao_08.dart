int pontosEnergia(int nivel, List<int> itensMagicos) {
  Set<int> multiplos = {};
  
  for (int item in itensMagicos) {
    for (int multiplo = item; multiplo < nivel; multiplo += item) {
      multiplos.add(multiplo);
    }
  }
  
  return multiplos.fold(0, (sum, item) => sum + item);
}

void main() {
  int resultado = pontosEnergia(20, [3, 5]);
  print(resultado);
}
