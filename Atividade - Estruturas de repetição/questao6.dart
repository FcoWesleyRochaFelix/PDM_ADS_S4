import 'dart:io';
import 'dart:math';

void main() {
  List<String> opcoes = ['pedra', 'papel', 'tesoura'];
  Random random = Random();

  stdout.write('Escolha pedra, papel ou tesoura: ');
  String escolhaUsuario = stdin.readLineSync()!.toLowerCase();

  if (!opcoes.contains(escolhaUsuario)) {
    print('Opção inválida!');
    return;
  }

  String escolhaComputador = opcoes[random.nextInt(3)];
  print('O computador escolheu: $escolhaComputador');

  if (escolhaUsuario == escolhaComputador) {
    print('Empate!');
  } else if ((escolhaUsuario == 'pedra' && escolhaComputador == 'tesoura') ||
      (escolhaUsuario == 'papel' && escolhaComputador == 'pedra') ||
      (escolhaUsuario == 'tesoura' && escolhaComputador == 'papel')) {
    print('Você venceu!');
  } else {
    print('O computador venceu!');
  }
}
