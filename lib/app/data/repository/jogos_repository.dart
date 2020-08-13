import 'package:os_tres/app/data/provider/firebase_firestore_provider.dart';

class JogosRepository {
  final FirebaseFirestoreProvider provider = FirebaseFirestoreProvider();

  getJogos() => provider.getJogos();
  
}
