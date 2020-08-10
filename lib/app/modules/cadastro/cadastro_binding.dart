import 'package:get/get.dart';
import 'package:os_tres/app/data/repository/user_repository.dart';
import 'package:os_tres/app/modules/cadastro/cadastro_controller.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() => CadastroController(
        repository: UserRepository()));
  }
}