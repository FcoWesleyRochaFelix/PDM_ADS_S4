String raindrops(int numero) {
  String resultado = "";
  
  if (numero % 3 == 0) {
    resultado += "Pling";
  }
  if (numero % 5 == 0) {
    resultado += "Plang";
  }
  if (numero % 7 == 0) {
    resultado += "Plong";
  }
  
  if (resultado.isEmpty) {
    resultado = numero.toString();
  }
  
  return resultado;
}

void main() {
  print(raindrops(28));
  print(raindrops(30));
  print(raindrops(34));
}
