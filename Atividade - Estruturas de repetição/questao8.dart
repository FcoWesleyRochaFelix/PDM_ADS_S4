import 'dart:io';

String respostaDeBob(String frase) {
  String fraseLimpa = frase.trim();
  bool ehPergunta = fraseLimpa.endsWith('?');
  bool ehGrito = fraseLimpa.toUpperCase() == fraseLimpa &&
      fraseLimpa.toLowerCase() != fraseLimpa; // tem letra e está tudo maiúsculo
  bool ehVazio = fraseLimpa.isEmpty;

  if (ehVazio) {
    return 'Tudo bem. Seja desse jeito!';
  } else if (ehGrito && ehPergunta) {
    return 'Calma, eu sei o que estou fazendo!';
  } else if (ehGrito) {
    return 'Uau, relaxe!';
  } else if (ehPergunta) {
    return 'Ok.';
  } else {
    return 'Tanto faz.';
  }
}

void main() {
  while (true) {
    stdout.write('Fale com Bob (ou digite "sair" para encerrar): ');
    String frase = stdin.readLineSync() ?? '';

    if (frase.toLowerCase() == 'sair') {
      break;
    }

    print('Bob: ${respostaDeBob(frase)}');
  }
}
