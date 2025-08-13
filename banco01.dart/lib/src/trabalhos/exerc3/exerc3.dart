/* 3. Classe abstrata Funcionario
Crie uma classe abstrata `Funcionario` com o método `calcularSalario()`. 
Crie duas subclasses `Desenvolvedor` e `Gerente` com implementações diferentes do cálculo do salário. 
*/

abstract class CalculadorSalario {
  double calcular(double salarioBase);
}

class CalculadorSalarioComHorasExtras implements CalculadorSalario {
  final double taxaHorasExtras;

  CalculadorSalarioComHorasExtras(this.taxaHorasExtras);

  @override
  double calcular(double salarioBase) {
  
    return salarioBase * (1 + taxaHorasExtras);
  }
}


class CalculadorSalarioComComissoes implements CalculadorSalario {
  final double taxaComissao;

  CalculadorSalarioComComissoes(this.taxaComissao);

  @override
  double calcular(double salarioBase) {
   
    return salarioBase * (1 + taxaComissao);
  }
}

void main() {
  
  final calculadorHorasExtras = CalculadorSalarioComHorasExtras(0.5);
  final calculadorComissoes = CalculadorSalarioComComissoes(0.1);

  final salarioHorasExtras = calculadorHorasExtras.calcular(5000.0);
  print('Salário com horas extras: $salarioHorasExtras');

  final salarioComissoes = calculadorComissoes.calcular(5000.0);
  print('Salário com comissões: $salarioComissoes');
}