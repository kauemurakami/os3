class UserModel {

  String id;
  String nome;
  String email;
  String senha;
  bool isAdmin;
  String telefone;
  int pontos ;

  UserModel({ this.telefone, this.id, this.nome, this.email, this.senha, this.isAdmin, this.pontos });

  UserModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.nome = json['nome'];
      this.email = json['email'];
      this.senha = json['senha'];
      this.isAdmin = json['isAdmin'];
      this.telefone = json['telefone'];
      this.pontos = json['pontos'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['id'] = this.id;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['isAdmin'] = this.isAdmin;
    data['telefone'] = this.telefone;
    data['pontos'] = this.pontos;
    return data;
  }
}