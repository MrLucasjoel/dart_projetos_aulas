class Carro {
  String marca = '';
  String modelo = '';
  int ano;

  Carro(this.marca, this.modelo, this.ano);

  void exibirDetalhes(){
    print("Marca: $marca, Modelo: $modelo, Ano: $ano");
  }
}

void main(){
  Carro car1 = new Carro("Maserati", "Ghibli", 2025);
  Carro car2 = new Carro("Ferrari", "SF90", 2025);

  car1.exibirDetalhes();
  car2.exibirDetalhes();
}