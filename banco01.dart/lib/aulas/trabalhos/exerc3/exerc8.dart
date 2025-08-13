/* 8. Classe Pessoa com Encapsulamento
Implemente a classe `Pessoa` com nome e idade. 
Garanta que a idade não possa ser menor que zero, utilizando `set` com validação. */

class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade) {

    if (_idade < 0) {
      _idade = 0;
    }
  }

  String get nome => _nome;

  set nome(String novoNome) {
    _nome = novoNome;
  }

  int get idade => _idade;

  set idade(int novaIdade) {
    if (novaIdade < 0) {
      print('Idade não pode ser negativa. Definindo como 0.');
      _idade = 0;
    } else {
      _idade = novaIdade;
    }
  }
}

void main() {
  var p1 = Pessoa('Lucas', 30);
  print('${p1.nome} tem ${p1.idade} anos');

  p1.idade = -5;
  print('${p1.nome} agora tem ${p1.idade} anos');
}
