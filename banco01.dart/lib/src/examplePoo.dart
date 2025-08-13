/*
Em Dart, if, else if e switch são estruturas de controle de fluxo que permitem executar diferentes blocos de código com base em condições.
O if/else avalia uma condição booleana, executando um bloco de código se for verdadeira e outro se for falsa.
O else if permite verificar múltiplas condições sequencialmente.
O switch compara o valor de uma variável com múltiplos casos, executando o bloco de código correspondente ao caso que coincide.

1. if/else:
A estrutura if/else é usada para tomar decisões com base em uma condição.
Se a condição dentro do if for verdadeira, o bloco de código dentro do if é executado.
Se a condição for falsa, o bloco de código dentro do else (se houver) é executado.
*/
void main() {
  int idade = 20;

  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

/*
2. else if:
A estrutura else if permite verificar múltiplas condições sequencialmente.
Se a primeira condição for falsa, a próxima condição no else if é avaliada, e assim por diante.
O bloco de código correspondente ao primeiro else if cuja condição seja verdadeira é executado.
Se nenhuma das condições for verdadeira, o bloco de código no else (se houver) é executado.
 */

  int nota = 75;

  if (nota >= 90) {
    print("Aprovado com Louvor");
  } else if (nota >= 70) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }

/*
3. switch/case:
A estrutura switch/case é usada para comparar o valor de uma variável com múltiplos casos.
Se o valor da variável corresponder a um dos casos, o bloco de código dentro desse caso é executado.
O break é usado para sair do switch após a execução de um caso.
Se nenhum caso corresponder, o bloco de código dentro do default (se houver) é executado.
*/


  String diaDaSemana = "terça";

  switch (diaDaSemana) {
    case "segunda":
      print("Início da semana");
      break;
    case "sexta":
      print("Sexta-feira!");
      break;
    case "sábado":
    case "domingo":
      print("Fim de semana!");
      break;
    default:
      print("Dia normal");
  }
}
/*
Em resumo:
if/else: Uma condição para decidir entre dois caminhos.
else if: Múltiplas condições sequenciais.
switch/case: Comparação de uma variável com múltiplos casos.
É importante notar que o switch é mais eficiente quando se lida com
um número finito de valores possíveis para uma variável, enquanto o if/else e
else if são mais flexíveis para condições mais complexas.


--------------------------------------------------------------------------------

Em Dart, o operador ?? é o operador de coalescência nula.
  Ele é usado para fornecer um valor padrão quando uma variável é nula.
  Se o operando à esquerda do ?? for nulo, o operador retorna o valor à
  direita; caso contrário, ele retorna o valor à esquerda.

  Explicação detalhada:
  O operador ?? é uma forma concisa de lidar com valores nulos em Dart.
  Ele verifica se um valor é nulo e, se for, retorna outro valor especificado.

  Exemplo:

  void main() {
  String? nome; // Pode ser nulo
  String nomeFavorito = nome ?? "Dart"; // Se nome for nulo, nomeFavorito recebe "Dart"

  print(nomeFavorito); // Saída: Dart

  nome = "Flutter";
  nomeFavorito = nome ?? "Dart"; // Se nome não for nulo, nomeFavorito recebe "Flutter"

  print(nomeFavorito); // Saída: Flutter
  }

  Como funciona:
  1. Verificação de nulidade:
  O operador ?? primeiro verifica se o operando à sua esquerda (por exemplo, nome no exemplo acima) é nulo.
  2. Retorno:
  Se o operando for nulo, o operador retorna o operando à sua direita (por exemplo, "Dart" no exemplo acima).
  Se o operando não for nulo, o operador retorna o próprio operando à esquerda (por exemplo, "Flutter" no exemplo acima).

  Uso:
  O operador ?? é frequentemente usado para:
  Definir valores padrão para variáveis que podem ser nulas.
  Evitar erros de "null dereference" (acesso a um valor nulo).
  Tornar o código mais legível e conciso ao lidar com valores nulos.
  Em resumo: O operador ?? em Dart é uma ferramenta poderosa para lidar com valores nulos de forma elegante e eficiente,
  permitindo que você forneça valores padrão e evite erros de forma concisa.
*/