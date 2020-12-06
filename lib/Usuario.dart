
class Usuario{

  final String username;
  final String nome;
  final String sobrenome;
  final String data;
  final String email;
  final int senha;

  Usuario(this.username,this.nome,this.sobrenome,this.data,this.email,this.senha);

  @override
  
    String toString() {
    return 'Produto{username: $username, nome: $nome, sobrenome: $sobrenome,data: $data,email: $email,senha: $senha}';
  }  
}

