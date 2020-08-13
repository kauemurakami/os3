import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
         
          Container(
            padding: EdgeInsets.all(16.0),
            height: 300,
            width: Get.width,
            child:  GridView.count(
              childAspectRatio: 3 / 2,
              crossAxisCount: 3,
              mainAxisSpacing: 24.0,
              children:
                  List.generate(controller.jogos.length, (index) => 
                  Container(child:Text(controller.jogos[index].nomeJogo))),
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
