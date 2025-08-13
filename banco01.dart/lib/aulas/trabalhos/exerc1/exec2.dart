import 'dart:io';

void main() {
  List<int> idadesPermitidas = [
    18 // Lista com a idade permitida
]; 

  while (true) {
    print('Qual sua idade?'); // Pergunta a minha idade
    int idade = int.parse(stdin.readLineSync()!);

    // Verifica se a idade informada está na lista de idades permitidas
    bool acessoPermitido = false;
    for (int idadePermitida in idadesPermitidas) {
      if (idade == idadePermitida) {
        acessoPermitido = true;
        break; // Encerra o loop assim que encontrar a idade permitida
      }
    }

    if (acessoPermitido) {
      print('Acesso permitido!');
      break; // Encerra o loop principal
    } else {
      print('Acesso negado. Tente novamente.');
    }
  }
}