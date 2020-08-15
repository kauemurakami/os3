class JogoModel {

  int idJogo;
  String nomeJogo;  
  String imageUrl;

  JogoModel({ this.idJogo, this.nomeJogo, this.imageUrl });

  JogoModel.fromJson(Map<String, dynamic> json){
      this.idJogo = json['idJogo'];
      this.nomeJogo = json['nomeJogo'];
      this.imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeJogo'] = this.nomeJogo;
    data['idJogo'] = this.idJogo;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}