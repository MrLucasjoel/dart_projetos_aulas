import 'dart:io';

void main() {
  stdout.write('Digite uma frase: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('Entrada inválida.');
    return;
  }

  String s = input.toLowerCase();
  int vogais = 0;
  int consoantes = 0;
  const String listaVogais = 'aeiou';

  for (var ch in s.runes.map((r) => String.fromCharCode(r))) {
    if (RegExp(r'^[a-z]$').hasMatch(ch)) {
      if (listaVogais.contains(ch)) {
        vogais++;
      } else {
        consoantes++;
      }
    }
  }

  print('Vogais: $vogais');
  print('Consoantes: $consoantes');
}
