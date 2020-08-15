import 'package:get/get.dart';
import 'package:os_tres/app/data/repository/salas_repository.dart';
import 'package:os_tres/app/modules/criar_sala/criar_sala_controller.dart';

class CriarSalaBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<CriarSalaController>( () => CriarSalaController(
    repository: SalasRepository()));
  }
}