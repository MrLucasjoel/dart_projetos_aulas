//1. Classe Produto
//Crie uma classe `Produto` com atributos privados `nome`, `preco` e `quantidade`. 
//Implemente métodos getters e setters com validação. Crie um método para calcular o valor total em estoque.

class Produto {
  // Atributos privados
  String _nome = '';
  double _preco = 0.0;
  int _quantidade = 0;

  // Construtor
  Produto(String nome, double preco, int quantidade) {
    this.nome = nome;
    this.preco = preco;
    this.quantidade = quantidade;
  }

  // Getter e setter para nome
  String get nome => _nome;
  set nome(String valor) {
    if (valor.trim().isNotEmpty) {
      _nome = valor;
    } else {
      throw ArgumentError('Nome não pode ser vazio.');
    }
  }

  // Getter e setter para preco
  double get preco => _preco;
  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    } else {
      throw ArgumentError('Preço deve ser maior ou igual a zero.');
    }
  }

  // Getter e setter para quantidade
  int get quantidade => _quantidade;
  set quantidade(int valor) {
    if (valor >= 0) {
      _quantidade = valor;
    } else {
      throw ArgumentError('Quantidade deve ser maior ou igual a zero.');
    }
  }

  // Método para calcular o valor total em estoque
  double calcularValorTotal() {
    return _preco * _quantidade;
  }
}

void main() {
  var produto = Produto('Cerveja Baadu', 3.90, 12);
  print('Produto: ${produto.nome}');
  print('Preço: R\$${produto.preco}');
  print('Quantidade: ${produto.quantidade}');
  print('Valor total em estoque: R\$${produto.calcularValorTotal()}');
}
