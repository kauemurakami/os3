import 'package:get/get.dart';
import 'package:os_tres/app/data/repository/jogos_repository.dart';
import 'package:os_tres/app/modules/home_user/home_controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
    repository: JogosRepository()));
  }
}