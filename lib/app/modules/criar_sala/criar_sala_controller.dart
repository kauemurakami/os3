import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:os_tres/app/data/model/jogos_model.dart';
import 'package:os_tres/app/data/model/user_model.dart';
import 'package:os_tres/app/data/repository/salas_repository.dart';
import 'package:os_tres/app/modules/home_user/home_controller.dart';

class CriarSalaController extends GetxController {
  final SalasRepository repository;
  CriarSalaController({@required this.repository}) : assert(repository != null);


  @override
  void onInit() {
    this.user = Get.find<HomeController>().user;
    super.onInit();
  }

  UserModel user;
  
  List<JogoModel> jogos;
  
  final _selectedJogo = JogoModel().obs;
  get selectedJogo => this._selectedJogo.value;
  set selectedJogo(value) => this._selectedJogo.value = value;

  onChangedJogo(value) { this.selectedJogo = value; print(this.selectedJogo.nomeJogo);}

  criarSala(){

  }

}
