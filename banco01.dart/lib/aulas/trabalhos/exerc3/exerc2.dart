/* 2. Classe ContaBancaria
Crie uma classe `ContaBancaria` com atributos `titular`, `numero`, `saldo`. 
Implemente métodos para `depositar`, `sacar` (com validação de saldo) e `mostrarSaldo`. 
*/

class ContaBancaria {
  // Atributos privados
  String _titular;
  int _numero;
  double _saldo;

  // Construtor
  ContaBancaria(this._titular, this._numero, this._saldo);

  // Getter para o titular (opcional)
  String get titular => _titular;

  // Getter para o número da conta
  int get numero => _numero;

  // Getter para o saldo
  double get saldo => _saldo;

  // Método para depositar
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso.');
    } else {
      print('Valor de depósito inválido.');
    }
  }

  // Método para sacar com validação de saldo
  void sacar(double valor) {
    if (valor <= 0) {
      print('Valor de saque inválido.');
    } else if (valor > _saldo) {
      print('Saldo insuficiente para saque.');
    } else {
      _saldo -= valor;
      print('Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso.');
    }
  }

  // Método para mostrar saldo
  void mostrarSaldo() {
    print('Saldo atual da conta de $_titular: R\$${_saldo.toStringAsFixed(2)}');
  }
}

void main() {
  ContaBancaria conta = ContaBancaria('Maria', 123456, 500.0);

  conta.mostrarSaldo();

  conta.depositar(200.0);
  conta.mostrarSaldo();

  conta.sacar(100.0);
  conta.mostrarSaldo();

  conta.sacar(700.0); // Tentativa de saque com saldo insuficiente
  conta.depositar(-50); // Tentativa de depósito inválido
}
