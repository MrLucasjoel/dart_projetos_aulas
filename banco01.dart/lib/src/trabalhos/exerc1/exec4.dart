import 'dart:io';

void main() {
  const double minNota = 0.0;
  const double maxNota = 10.0;

  List<double> notas = [];

  // Função para ler uma nota válida
  double lerNota(int disciplina) {
    while (true) {
      stdout.write('Digite a nota da disciplina #$disciplina (0.0 a 10.0): ');
      String? linha = stdin.readLineSync();
      if (linha == null) {
        stdout.writeln('Entrada inválida. Tente novamente.');
        continue;
      }

      double? nota = double.tryParse(linha.replaceAll(',', '.'));
      if (nota == null) {
        stdout.writeln('Não é um número válido. Tente novamente.');
        continue;
      }
      if (nota < minNota || nota > maxNota) {
        stdout.writeln('Nota fora do intervalo (0 10). Tente novamente.');
        continue;
      }

      return nota;
    }
  }

  // Lê as três notas
  for (int i = 1; i <= 3; i++) {
    double nota = lerNota(i);
    notas.add(nota);
  }

  // Calcula a média
  double soma = notas.reduce((a, b) => a + b);
  double media = soma / notas.length;

  // Exibe o resultado
  stdout.writeln('\nNotas: ${notas.map((n) => n.toStringAsFixed(1)).join(', ')}');
  stdout.writeln('Média: ${media.toStringAsFixed(2)}');

  if (media >= 7.0) {
    stdout.writeln('Resultado: APROVADO');
  } else if (media >= 5.0) {
    stdout.writeln('Resultado: RECUPERAÇÃO');
  } else {
    stdout.writeln('Resultado: REPROVADO');
  }
}
