import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:os_tres/app/data/model/user_model.dart';

class MyFirebaseAuthProvider {
  cadastrar(us) async {
    try {
      final FirebaseUser user =
          (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: us.email,
        password: us.senha,
      ))
              .user;
      if (user != null) {
        await saveUserInfo(us, user);
        return user;
      } else
        return null;
    } catch (e) {
      print(e.message);
    }
  }

  saveUserInfo(us, user) async {
    us.pontos = 1500;
    us.id = user.uid;
    await Firestore.instance
        .collection('users')
        .document(us.id)
        .setData(us.toJson());
  }

  login() async {

  }

  getInfo(user) async {
    UserModel user;
    await Firestore.instance.collection('users').document('$user.id').get().then((data) => user );
  }
}
