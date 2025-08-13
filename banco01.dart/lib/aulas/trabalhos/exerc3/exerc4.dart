/* 4. Sistema de Veículos
Crie uma classe abstrata `Veiculo` com métodos `ligar()` e `desligar()`. 
Implemente as classes `Carro` e `Moto`, sobrescrevendo os métodos.
 */

abstract class Veiculo {
  void ligar();
  void desligar();
}

class Carro implements Veiculo {
  @override
  void ligar() {
    print('Carro ligado');
  }

  @override
  void desligar() {
    print('Carro desligado');
  }
}

class Moto implements Veiculo {
  @override
  void ligar() {
    print('Moto ligada');
  }

  @override
  void desligar() {
    print('Moto desligada');
  }
}

void main() {
  Carro meuCarro = Carro();
  meuCarro.ligar();
  meuCarro.desligar();

  Moto minhaMoto = Moto();
  minhaMoto.ligar();
  minhaMoto.desligar();
}