import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:os_tres/app/data/repository/user_repository.dart';

import 'login_controller.dart';

class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController(
    repository: UserRepository()));
  }
}