import 'dart:io';

void main() {

  //String codProduto = '';

  stdout.write("Informe o nome do produto: ");
  String? nomeProduto = stdin.readLineSync();

  //int codProduto1 = int.tryParse(codProduto?? '') ?? 0;
 // nomeProduto = nomeProduto?? "Produdo do Lucas";

  try {
    if (nomeProduto == null || nomeProduto.isEmpty){
      throw FormatException("Nome do produto não pode ser nulo");
    }
    print("Nome do produto: $nomeProduto");
  }catch(e){
    nomeProduto = "Produto não informado";
    print("Produto não informado");
  }
  
  //print("Código do Produto: $codProduto1");
}