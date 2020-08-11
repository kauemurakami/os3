import 'package:get/get.dart';
import 'package:os_tres/app/modules/cadastro/cadastro_binding.dart';
import 'package:os_tres/app/modules/cadastro/cadastro_page.dart';
import 'package:os_tres/app/modules/home_user/home_binding.dart';
import 'package:os_tres/app/modules/home_user/home_page.dart';
import 'package:os_tres/app/modules/login/login_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(),),
    GetPage(name: Routes.CADASTRO, page:()=> CadastroPage(), binding: CadastroBinding(),),
    GetPage(name: Routes.HOME, page:()=> HomePage(), binding: HomeBinding()),
  ];
}