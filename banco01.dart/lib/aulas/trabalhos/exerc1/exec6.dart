import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final numeroSecreto = random.nextInt(100) + 1; // 1 a 100 :contentReference[oaicite:1]{index=1}
  int tentativas = 0;

  print('Adivinhe o número entre 1 e 100:');

  while (true) {
    stdout.write('Seu palpite: ');
    String? linha = stdin.readLineSync();
    int? palpite = int.tryParse(linha ?? '');

    if (palpite == null) {
      print('Entrada inválida. Digite um número entre 1 e 100.');
      continue;
    }

    tentativas++;
    if (palpite < numeroSecreto) {
      print('Muito baixo! Tente um número maior.');
    } else if (palpite > numeroSecreto) {
      print('Muito alto! Tente um número menor.');
    } else {
      print('Parabéns! Você acertou em $tentativas tentativas.');
      break;
    }
  }
}
