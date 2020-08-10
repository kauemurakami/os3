import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:os_tres/app/data/model/user_model.dart';
import 'package:os_tres/app/data/repository/user_repository.dart';

class CadastroController extends GetxController {
  final UserRepository repository;
  CadastroController({@required this.repository}) : assert(repository != null);

  final user = UserModel();

  onChangedEmail(value) => this.user.email = value;
  
  onChangedSenha(value) => this.user.senha = value;
  onChangedNome(value) =>
      value != this.user.nome ? this.user.nome = value : null;
  
  validateCpf(value) =>
      GetUtils.isCpf(value) == true ? null : 'Insira um CPF válido.';
  validateNome(value) => value.length < 3 ? 'Insira um nome válido.' : null;
  validateSenha(value) => value.length < 6 ? 'Insira uma senha válida.' : null;
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido.';

  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.senha = value;
  onSavedNome(value) => this.user.nome = value;

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final _status = false.obs;
  get status => this._status.value;
  set status(value) => this._status.value = value;

  cadastrar() async {
    this.status = true;
    final FirebaseUser user =
        (await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: this.user.email,
      password: this.user.senha,
    ))
            .user;
    if (user != null) {
      var token = user.getIdToken().toString();
      await saveUserInfo(token);
      this.status = false;
    } else
      this.message = 'Erro ao realizar cadastro';
  }

  saveUserInfo(token) async {
    await Firestore.instance
        .collection('users')
        .document(user.email)
        .setData(this.user.toJson());
  }
}