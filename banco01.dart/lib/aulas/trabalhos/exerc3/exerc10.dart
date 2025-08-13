/* 10. Sistema de Pagamentos
Crie uma classe abstrata `Pagamento` com o método `processarPagamento()`. 
Implemente as classes `PagamentoBoleto` e `PagamentoCartao` que sobrescrevem esse método. */

abstract class Pagamento {
  void processarPagamento(double valor);
}

class PagamentoBoleto extends Pagamento {
  @override
  void processarPagamento(double valor) {
    print("Processando pagamento de R\$${valor.toStringAsFixed(2)} via Boleto.");
  }
}

class PagamentoCartao extends Pagamento {
  @override
  void processarPagamento(double valor) {
    print("Processando pagamento de R\$${valor.toStringAsFixed(2)} via Cartão de Crédito.");
  }
}

void main() {
  Pagamento p1 = PagamentoBoleto();
  Pagamento p2 = PagamentoCartao();

  p1.processarPagamento(150.00);
  p2.processarPagamento(250.50);
}
