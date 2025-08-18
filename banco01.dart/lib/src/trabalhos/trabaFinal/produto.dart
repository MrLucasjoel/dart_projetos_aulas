class Produto {
  String nome;
  double _preco = 0.0; //Atributo privado

  Produto(this.nome, double preco) {
    this.preco = preco; //Usa o setter para validar
  }

  //Getter
  double get preco => _preco;

  //Setter com validação
  set preco(double valor) {
    if (valor < 0) {
      print("Preço inválido! Definindo como 0.");
      _preco = 0.0;
    } else {
      _preco = valor;
    }
  }

  //Método para exibir informações
  void exibir() {
    print("Produto: $nome | Preço: R\$ ${_preco.toStringAsFixed(2)}");
  }
}

void main() {
  //Criando produtos
  Produto p1 = Produto("Camiseta", 59.90);
  Produto p2 = Produto("Tênis", -120.0); //Valor negativo será corrigido

  //Alterando o preço de um produto
  p1.preco = 79.90;

  //Exibindo informações
  p1.exibir();
  p2.exibir();
}
