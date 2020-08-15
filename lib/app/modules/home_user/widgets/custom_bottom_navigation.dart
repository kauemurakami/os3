import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/modules/home_user/home_controller.dart';
import 'package:os_tres/app/theme/app_colors.dart';

class CustomBottomNavigation extends GetView<HomeController> {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Obx (() => BottomNavigationBar(
        currentIndex: controller.index,
        fixedColor: mainColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) => controller.index = index,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(title : Text('Jogos'), icon: Icon(Icons.play_arrow,size: 35, ), ),
        BottomNavigationBarItem(title : Text('Buscar'), icon: Icon(Icons.search,size: 35, )),
        BottomNavigationBarItem(title : Text('Minha Sala'), icon: Icon(Icons.home,size: 35, )),
        BottomNavigationBarItem(title : Text('Criar Sala'), icon: Icon(Icons.add_to_queue,size: 35, )),
      ]));
  }
}