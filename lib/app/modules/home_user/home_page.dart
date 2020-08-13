import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/modules/home_user/widgets/item_grid_widget.dart';
import 'package:os_tres/app/widgets/custom_button_widget.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(24.0),
            child: Image.asset(
              'assets/images/logo.png',
              height: 100.0,
              width: 250.0,
            ),
          ),
          //Text(controller.jogos[0].nomeJogo),
          Obx(
            controller.jogos.length == null ?
            Center(child: CircularProgressIndicator(),) :
            () =>Expanded(
              child: GridView.count(padding: EdgeInsets.all(16.0),
                childAspectRatio: 3 / 3,
                crossAxisCount: 3,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: List.generate(
                    controller.jogos.length,
                    (index) => 
                      CustomItemGrid(jogo:controller.jogos[index])
                    ),
              ),
            ),
          ),

          CustomButtonWidget(
            text: 'teste',
            callback: () => controller.getJogos(),
          )
        ],
      )),
    );
  }
}
