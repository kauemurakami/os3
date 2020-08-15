import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/data/model/jogos_model.dart';
import 'package:os_tres/app/modules/home_user/home_controller.dart';

class CustomDropDownJogos extends GetView {
  final HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
        child: Obx(() => DropdownButton<JogoModel>(
          value: null,
          hint: Text("Selecione o jogo"),
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(fontSize: 24),
          items: builDropdownMenuItems(controller.jogos),
          underline: Container(height: 2, color: Theme.of(context).accentColor),
          onChanged: (value) => controller.onChangedJogo(value),
        )),
    );
  }

  List<DropdownMenuItem<JogoModel>> builDropdownMenuItems(List<JogoModel> jogos) {
    List<DropdownMenuItem<JogoModel>> items = List();
    for (JogoModel jogo in jogos) {
      items.add(DropdownMenuItem(
        value: jogo,
        child: Text(
          jogo.nomeJogo,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ));
    }
    return items;
  }
}