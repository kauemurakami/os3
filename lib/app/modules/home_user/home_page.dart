import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/modules/buscar_jogo/buscar_jogo_page.dart';
import 'package:os_tres/app/modules/criar_sala/criar_sala_page.dart';
import 'package:os_tres/app/modules/home_user/home_screen.dart';
import 'package:os_tres/app/modules/home_user/widgets/custom_bottom_navigation.dart';
import 'package:os_tres/app/modules/minha_sala/minha_sala_page.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {

  final List<Widget> telas = [
    HomeScreen(),
    BuscarJogoPage(),
    MinhaSalaPage(),
    CriarSalaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => telas[controller.index]),

      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}
