import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:os_tres/app/data/model/jogos_model.dart';

class FirebaseFirestoreProvider {

  getJogos() async {
    List<JogoModel> jogos = List<JogoModel>();
    await Firestore.instance
        .collection('jogos')
        .getDocuments()
        .then((snapshot) => snapshot.documents.forEach((element) {
              //print(element.data);
              JogoModel jogo = JogoModel.fromJson(element.data);
              //print(jogo.nomeJogo);
              jogos.add(jogo);
            }));
    return jogos;
  }



}
