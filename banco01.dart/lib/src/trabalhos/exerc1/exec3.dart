import 'dart:io';

void main() {
  int tempoRestante = 3600; // 1 hora em segundos

  while (tempoRestante > 0) {
    print('Tempo restante: ${tempoRestante ~/ 60} minutos e ${tempoRestante % 60} segundos');

    // Simula a passagem do tempo (1 segundo)
    sleep(Duration(seconds: 1));

    tempoRestante--;

    // Verifica se o usuário inseriu um número negativo ou zero
    print('Insira um número negativo ou zero para parar:');
    int entrada = int.parse(stdin.readLineSync() ?? '1'); // Lê a entrada do usuário
    if (entrada <= 0) {
      print('Contagem regressiva interrompida.');
      break; // Sai do loop
    }
  }

  print('Contagem regressiva concluída!');
}