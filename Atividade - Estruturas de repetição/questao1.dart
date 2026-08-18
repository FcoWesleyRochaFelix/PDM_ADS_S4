import 'dart:io';

void main() {
  stdout.write('Digite seu nome: ');
  String nomeDaPessoa = stdin.readLineSync()!;

  stdout.write('Digite sua idade: ');
  int idadeDaPessoa = int.parse(stdin.readLineSync()!);

  print('Olá $nomeDaPessoa, você tem $idadeDaPessoa anos.');

  int anoAtual = 2025;
  int anoDeNascimento = anoAtual - idadeDaPessoa;
  print('Você nasceu em $anoDeNascimento.');

  for (int ano = 2000; ano <= 2025; ano++) {
    if (ano == anoDeNascimento) {
      print('No ano de $ano você nasceu!');
    } else if (ano > anoDeNascimento) {
      int idadeNoAno = ano - anoDeNascimento;
      print('No ano de $ano você tinha $idadeNoAno anos.');
    }
  }

  int anosParaCem = 100 - idadeDaPessoa;
  print('Faltam $anosParaCem anos para você completar 100 anos.');
}
