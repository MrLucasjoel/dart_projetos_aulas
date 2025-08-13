void main(List<String> args) {
  Map<String,String?> usuario1 = {
    'nome' : 'Alaice',
    'email' : 'alaice@gmail.com',
    'telefone' : null, // o telefone não foi informado
    'endereco' : null, // o endereço não foi informado
  };

  print('Cadastro de Usuario\n');
  print("Usuario 1");
  String nome1 = usuario1['nome'] ?? 'Nome não informado';
  String email1 = usuario1['email'] ?? 'Email não informado';
  String telefone1 = usuario1['telefone'] ?? 'telefone não informado';
  String endereco1 = usuario1['endereco'] ?? 'Endereço não informado';

  print('Nome: $nome1');
  print('Email: $email1');
  print('Telefone: $telefone1');
  print('Endereco: $endereco1');
}