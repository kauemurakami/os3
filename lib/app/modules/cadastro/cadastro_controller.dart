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
  onChangeTelefone(value) => this.user.telefone = value ; 

  validateCpf(value) =>
      GetUtils.isCpf(value) == true ? null : 'Insira um CPF válido.';
  validateNome(value) => value.length < 3 ? 'Insira um nome válido.' : null;
  validateSenha(value) => value.length < 6 ? 'Insira uma senha válida.' : null;
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido.';
  validateTelefone(value) => value.length < 11 ? 'Insira um número de telefone válido' : null ; 

  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.senha = value;
  onSavedNome(value) => this.user.nome = value;
  onSavedTelefone(value) => this.user.telefone = value;

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final _status = false.obs;
  get status => this._status.value;
  set status(value) => this._status.value = value;

  cadastro() async {
    await repository.cadastrar(this.user).then((data){
      if(data != null){
        this.status = true;
      }else{
        this.message = 'Email já cadastrado';
      }
    });
  }

}
