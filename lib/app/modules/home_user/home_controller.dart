
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:os_tres/app/data/model/jogos_model.dart';
import 'package:os_tres/app/data/repository/jogos_repository.dart';

class HomeController extends GetxController {

final JogosRepository repository;
HomeController({@required this.repository}) : assert(repository != null);
  
  final _user = Get.arguments.obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;
  
  final _jogos = List<JogoModel>().obs;
  get jogos => this._jogos.value;
  set jogos(value) => this._jogos.value = value;

  final _imagesJogos = List<String>().obs;
  get imagesJogos => this._imagesJogos.value;
  set imagesJogos(value) => this._imagesJogos.value = value;
  
  getImages() async {
    //final ref = FirebaseStorage.instance.ref().child('images').child('1').getDownloadURL();
    //return ref;
  }

  @override
  void onInit() {
    getJogos();
    super.onInit();
  }
  
  getJogos(){
    repository.getJogos().then((data) => this.jogos = data);    
    print(this.jogos);
  }
  
  
}