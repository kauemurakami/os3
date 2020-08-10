import 'package:get/get.dart';
import 'package:os_tres/app/modules/login/login_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(),)
  ];
}