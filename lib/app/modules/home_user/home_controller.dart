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

  final _index = 0.obs;
  get index => this._index.value;
  set index(value) => this._index.value = value;
  final _selectedJogo = JogoModel().obs;
  get selectedJogo => this._selectedJogo.value;
  set selectedJogo(value) => this._selectedJogo.value = value;

  onChangedJogo(value) {
    this.selectedJogo = value;
    print(this.selectedJogo.nomeJogo);
  }

  String imageUrl;

/*
  getImages(String id) async {
    await FirebaseStorage.instance.ref().child('images/$id.png').getDownloadURL().then((data) => this.imageUrl = data);    
    return imageUrl;
  }
*/

  @override
  void onInit() {
    getJogos();
    super.onInit();
  }

  getJogos() {
    repository.getJogos().then((data) => this.jogos = data);
    //print(getImages('1'));
  }
}
