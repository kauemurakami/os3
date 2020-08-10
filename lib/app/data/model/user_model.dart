class UserModel {

  String id;
  String nome;
  String email;
  String senha;

  UserModel({ id, nome, email, senha });

  UserModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.nome = json['nome'];
      this.email = json['email'];
      this.senha = json['senha'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['id'] = this.id;
    data['email'] = this.email;
    data['senha'] = this.senha;
    return data;
  }
}