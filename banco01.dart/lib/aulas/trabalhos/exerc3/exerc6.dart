/* 6. Classe Retângulo
Crie uma classe `Retangulo` com os atributos `largura` e `altura`. 
Implemente métodos para calcular `área` e `perímetro`. Faça validação para impedir valores negativos.
 */

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura) {
    if (largura < 0 || altura < 0) {
      throw ArgumentError('Largura e altura devem ser não negativas.');
    }
  }

  void atualizarLargura(double valor) {
    if (valor < 0) {
      throw ArgumentError('Largura deve ser não negativa.');
    }
    largura = valor;
  }

  void atualizarAltura(double valor) {
    if (valor < 0) {
      throw ArgumentError('Altura deve ser não negativa.');
    }
    altura = valor;
  }

  double area() {
    return largura * altura;
  }

  double perimetro() {
    return 2 * (largura + altura);
  }

  @override
  String toString() {
    return 'Retângulo(largura: $largura, altura: $altura, área: ${area()}, perímetro: ${perimetro()})';
  }
}

void main() {
  var r = Retangulo(4, 5);
  print(r);

  r.atualizarLargura(7);
  r.atualizarAltura(3);
  print('Área atualizada: ${r.area()}');
  print('Perímetro atualizado: ${r.perimetro()}');
}
