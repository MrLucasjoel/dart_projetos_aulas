class Produto {
  double _preco = 0;

//contrutor para pegar o preço
  Produto(double preco){
  this._preco = preco;
  }
//get e set do preço
  //double getPreco => _preco;

  void setPreco (double valor){
    if(valor >= 0){
      _preco = valor;
    }else{
      print("Preco invalido");
    }
  }

  void exibirPreco(){
    print("O preço informado foi: R\$$_preco");
  }
}

void main(){
  //Produto p1 = Produto();
 /*  p1.setPreco(1200.59);
  p1.setPreco(-1);
  p1.exibirPreco(); */
}