import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/modules/home_user/home_controller.dart';
import 'package:os_tres/app/widgets/custom_dropdown_jogos.dart';

class CriarSalaPage extends GetView {
 
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            CustomDropDownJogos(), 
            
          ],
        )
      ),
    );
  }
}