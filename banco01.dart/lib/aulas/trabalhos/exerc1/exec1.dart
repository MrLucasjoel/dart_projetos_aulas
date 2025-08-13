import 'dart:io';

void main() {
  print('Digite o primeiro número inteiro:');
  String? input1 = stdin.readLineSync();
  
  print('Digite o segundo número inteiro:');
  String? input2 = stdin.readLineSync();
  
  print('Digite a operação (+, -, *, /):');
  String? operacao = stdin.readLineSync();
  
  int? num1 = int.tryParse(input1 ?? '');
  int? num2 = int.tryParse(input2 ?? '');
  
  if (num1 == null || num2 == null) {
    print('Erro: por favor, digite números inteiros válidos.');
    return;
  }
  
  if (operacao == null || operacao.isEmpty) {
    print('Erro: operação inválida.');
    return;
  }
  
  switch (operacao) {
    case '+':
      print('Resultado: $num1 + $num2 = ${num1 + num2}');
      break;
    case '-':
      print('Resultado: $num1 - $num2 = ${num1 - num2}');
      break;
    case '*':
      print('Resultado: $num1 * $num2 = ${num1 * num2}');
      break;
    case '/':
      if (num2 == 0) {
        print('Erro: divisão por zero não é permitida.');
      } else {
        double resultado = num1 / num2;
        print('Resultado: $num1 / $num2 = $resultado');
      }
      break;
    default:
      print('Erro: operação inválida. Use +, -, * ou /.');
  }
}
