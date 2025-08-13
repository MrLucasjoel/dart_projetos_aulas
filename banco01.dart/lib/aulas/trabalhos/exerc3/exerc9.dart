/* 9. Interface Imprimivel
Crie uma interface `Imprimivel` com um método `imprimir()`. 
Faça com que as classes `Documento` e `Relatorio` implementem essa interface com comportamentos diferentes. */

abstract class Imprimivel {
  void imprimir();
}

class Documento implements Imprimivel {
  String titulo;
  Documento(this.titulo);

  @override
  void imprimir() {
    print("Imprimindo documento: $titulo");
  }
}

class Relatorio implements Imprimivel {
  String nome;
  int paginas;
  Relatorio(this.nome, this.paginas);

  @override
  void imprimir() {
    print("Relatório '$nome' com $paginas páginas enviado para impressão.");
  }
}

void main() {
  Imprimivel doc = Documento("Contrato de Trabalho");
  Imprimivel rel = Relatorio("Vendas 2025", 12);

  doc.imprimir();
  rel.imprimir();
}
