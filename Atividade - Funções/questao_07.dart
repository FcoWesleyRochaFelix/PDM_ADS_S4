double idadePlaneta(int segundos, String planeta) {
  Map<String, double> periodos = {
    "Mercúrio": 0.2408467,
    "Vênus": 0.61519726,
    "Terra": 1.0,
    "Marte": 1.8808158,
    "Júpiter": 11.862615,
    "Saturno": 29.447498,
    "Urano": 84.016846,
    "Netuno": 164.79132
  };
  
  double segundosPorAnoTerrestre = 31557600;
  double anosterrestres = segundos / segundosPorAnoTerrestre;
  
  return anosterrestres / periodos[planeta]!;
}

void main() {
  print(idadePlaneta(1000000000, "Terra"));
  print(idadePlaneta(1000000000, "Mercúrio"));
}
