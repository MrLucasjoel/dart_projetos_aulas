/* 12. Conversão para String
Crie uma classe `Pessoa` com `nome` e `idade`. Sobrescreva o método 
`toString()` para retornar uma representação textual da instância. */

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return 'Pessoa(nome: $nome, idade: $idade)';
  }
}

void main() {
  var p1 = Pessoa("Lucas", 30);
  var p2 = Pessoa("Maria", 20);

  print(p1);
  print(p2);
}
