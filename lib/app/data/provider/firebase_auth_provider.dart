import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
        var token = user.getIdToken().toString();
        await saveUserInfo(token, us, user);
        return user;
      } else
        return null;
    } catch (e) {
      print(e.message);
    }
  }

  saveUserInfo(token, us, user) async {
    us.pontos = 1500;
    us.id = user.uid;
    await Firestore.instance
        .collection('users')
        .document(us.email)
        .setData(us.toJson());
  }
}
