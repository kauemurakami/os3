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
  
  List<JogoModel> jogos = List<JogoModel>();

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