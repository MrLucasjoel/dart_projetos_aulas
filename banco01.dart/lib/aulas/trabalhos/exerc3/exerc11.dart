/* 11. Classe Carrinho de Compras
Crie uma classe `Carrinho` que armazene uma lista de `Produto`.
 Implemente métodos para adicionar, remover e listar produtos, além de calcular o total do carrinho. */

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

class Carrinho {
  List<Produto> _produtos = [];

  void adicionarProduto(Produto p) {
    _produtos.add(p);
    print("${p.nome} adicionado ao carrinho.");
  }

  void removerProduto(Produto p) {
    _produtos.remove(p);
    print("${p.nome} removido do carrinho.");
  }

  void listarProdutos() {
    if (_produtos.isEmpty) {
      print("Carrinho vazio.");
    } else {
      print("Produtos no carrinho:");
      for (var p in _produtos) {
        print("- ${p.nome} | R\$${p.preco.toStringAsFixed(2)}");
      }
    }
  }

  double calcularTotal() {
    double total = 0;
    for (var p in _produtos) {
      total += p.preco;
    }
    return total;
  }
}

void main() {
  var carrinho = Carrinho();

  var p1 = Produto("Camisa", 59.90);
  var p2 = Produto("Calça", 120.50);
  var p3 = Produto("Tênis", 299.99);

  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);

  carrinho.listarProdutos();
  print("Total: R\$${carrinho.calcularTotal().toStringAsFixed(2)}");

  carrinho.removerProduto(p2);
  carrinho.listarProdutos();
  print("Total: R\$${carrinho.calcularTotal().toStringAsFixed(2)}");
}
