import 'package:mysql_client/mysql_client.dart';

// Classe Cliente
class Cliente {
  int? id;
  String nome;
  String email;

  Cliente(this.nome, this.email);

  Future<void> salvar(MySQLConnection conn) async {
    var result = await conn.execute(
      'INSERT INTO clientes (nome, email) VALUES (:nome, :email)',
      {'nome': nome, 'email': email},
    );
     // Buscar último id gerado
    var idResult = await conn.execute('SELECT LAST_INSERT_ID() as id');
    id = int.parse(idResult.rows.first.colByName("id")!);
    print("✅ Cliente cadastrado: $nome (ID: $id)");
  }

  static Future<List<Cliente>> listar(MySQLConnection conn) async {
    var results = await conn.execute('SELECT id, nome, email FROM clientes');
    return results.rows
        .map((row) => Cliente(row.colAt(1)!, row.colAt(2)!)..id = int.parse(row.colAt(0)!))
        .toList();
  }
}

// Classe Pedido
class Pedido {
  int? id;
  int clienteId;
  String descricao;
  double valor;

  Pedido(this.clienteId, this.descricao, this.valor);

  Future<void> salvar(MySQLConnection conn) async {
    var result = await conn.execute(
      'INSERT INTO pedidos (cliente_id, descricao, valor) VALUES (:clienteId, :descricao, :valor)',
      {
        'clienteId': clienteId.toString(),
        'descricao': descricao,
        'valor': valor.toString()
      },
    );
     // Buscar último id gerado
    var idResult = await conn.execute('SELECT LAST_INSERT_ID() as id');
    id = int.parse(idResult.rows.first.colByName("id")!);
    print("🛒 Pedido registrado: $descricao - R\$ $valor");
  }

  // Consulta 1: listar todos os pedidos
  static Future<void> listarTodos(MySQLConnection conn) async {
    var results = await conn.execute(
      'SELECT p.id, c.nome, p.descricao, p.valor '
      'FROM pedidos p JOIN clientes c ON p.cliente_id = c.id',
    );

    print("\n📋 Lista de Pedidos:");
    for (var row in results.rows) {
      print("Pedido ${row.colAt(0)} | Cliente: ${row.colAt(1)} | "
          "Descrição: ${row.colAt(2)} | Valor: R\$ ${row.colAt(3)}");
    }
  }

  // Consulta 2: total gasto por cliente
  static Future<void> totalPorCliente(MySQLConnection conn) async {
    var results = await conn.execute(
      'SELECT c.nome, SUM(p.valor) as total '
      'FROM clientes c JOIN pedidos p ON c.id = p.cliente_id '
      'GROUP BY c.id, c.nome',
    );

    print("\n💰 Total gasto por cliente:");
    for (var row in results.rows) {
      print("${row.colAt(0)} gastou R\$ ${row.colAt(1)}");
    }
  }
}

Future<void> main() async {
  // Conexão com o banco
  final conn = await MySQLConnection.createConnection(
    host: "localhost",
    port: 3306,
    userName: "root",
    password: "root", // sua senha
    databaseName: "loja",
  );

  await conn.connect();

  // Criando clientes
  var cliente1 = Cliente("Lucas Silva", "lucas@email.com");
  await cliente1.salvar(conn);

  var cliente2 = Cliente("Maria Souza", "maria@email.com");
  await cliente2.salvar(conn);

  // Criando pedidos
  var pedido1 = Pedido(cliente1.id!, "Camiseta", 79.90);
  await pedido1.salvar(conn);

  var pedido2 = Pedido(cliente1.id!, "Boné", 39.90);
  await pedido2.salvar(conn);

  var pedido3 = Pedido(cliente2.id!, "Tênis", 199.90);
  await pedido3.salvar(conn);

  // Consultas
  await Pedido.listarTodos(conn);
  await Pedido.totalPorCliente(conn);

  await conn.close();
}