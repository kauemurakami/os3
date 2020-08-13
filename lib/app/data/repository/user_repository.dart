
import 'package:os_tres/app/data/provider/firebase_auth_provider.dart';

class UserRepository {
    final MyFirebaseAuthProvider provider = MyFirebaseAuthProvider();

  cadastrar(user) => provider.cadastrar(user);

  logar(){

  }

  sair(){

  }

}