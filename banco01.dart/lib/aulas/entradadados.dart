import 'dart:io';

void main(){

//Entrada de dados
//Informando o nome
  stdout.write("Qual é o seu nome?");
  String? nome = stdin.readLineSync();

//Informando a idade
stdout.write("Qual é a sua idade?");
int idade = 0;
try {
  String? idadeInput = stdin.readLineSync();
  int.parse(idadeInput ?? '0'); 
  //se a idade for nula converte para 0
} catch (e){
  FormatException("idade zerada");
}

  print("Olá, $nome! Você tem $idade anos");


}