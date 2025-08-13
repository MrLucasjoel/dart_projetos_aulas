class Cliente {
  int idCliente;
  String nCliente;
  String cpfCliente;

//construdor da classe
  Cliente(this.idCliente, this.nCliente, this.cpfCliente);

//construtor da classe cliente.
  void mostraDados() {
    print("id : $idCliente, nome : $nCliente, cpf : $cpfCliente");
  }
}

void main() {
  Cliente cli1 = new Cliente(001, "João de Souza", "111.222.333-44");
  //cham o método para mostra os dados

  cli1.mostraDados();
}