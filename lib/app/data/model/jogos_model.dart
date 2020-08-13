class JogoModel {

  int idJogo;
  String nomeJogo;

  JogoModel({ this.idJogo, this.nomeJogo });

  JogoModel.fromJson(Map<String, dynamic> json){
      this.idJogo = json['idJogo'];
      this.nomeJogo = json['nomeJogo'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeJogo'] = this.nomeJogo;
    data['idJogo'] = this.idJogo;
    return data;
  }
}