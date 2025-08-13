/* 7. Sistema de Biblioteca
Crie as classes `Livro`, `Usuario` e `Emprestimo`. Utilize composição para representar o 
relacionamento entre as classes. Adicione métodos para registrar e exibir empréstimos.
 */

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

  @override
  String toString() {
    return '"$titulo" de $autor';
  }
}

class Usuario {
  String nome;
  List<Emprestimo> emprestimos = [];

  Usuario(this.nome);

  void registrarEmprestimo(Emprestimo emprestimo) {
    emprestimos.add(emprestimo);
    print('Empréstimo registrado para $nome: ${emprestimo.livro}');
  }

  void exibirEmprestimos() {
    if (emprestimos.isEmpty) {
      print('$nome não possui empréstimos.');
      return;
    }
    print('Empréstimos de $nome:');
    for (var e in emprestimos) {
      print('- ${e.livro} (data: ${e.dataEmprestimo})');
    }
  }
}

class Emprestimo {
  Livro livro;
  Usuario usuario;
  DateTime dataEmprestimo;

  Emprestimo(this.livro, this.usuario) : dataEmprestimo = DateTime.now();

  @override
  String toString() {
    return 'Livro: ${livro.titulo}, Usuário: ${usuario.nome}, Data: $dataEmprestimo';
  }
}

void main() {
  var livro1 = Livro('1984', 'George Orwell');
  var livro2 = Livro('O Pequeno Príncipe', 'Antoine de Saint-Exupéry');

  var usuario1 = Usuario('Alice');
  var usuario2 = Usuario('Bruno');

  var emprestimo1 = Emprestimo(livro1, usuario1);
  usuario1.registrarEmprestimo(emprestimo1);

  var emprestimo2 = Emprestimo(livro2, usuario2);
  usuario2.registrarEmprestimo(emprestimo2);

  var emprestimo3 = Emprestimo(livro2, usuario1);
  usuario1.registrarEmprestimo(emprestimo3);

  usuario1.exibirEmprestimos();
  usuario2.exibirEmprestimos();
}
