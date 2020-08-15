import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/data/repository/salas_repository.dart';
import 'package:os_tres/app/modules/criar_sala/criar_sala_controller.dart';
import 'package:os_tres/app/widgets/custom_dropdown_jogos.dart';

class CriarSalaPage extends StatelessWidget {
 
  final CriarSalaController controller = Get.put(CriarSalaController(repository: SalasRepository()));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        child: CustomDropDownJogos()
      ),
    );
  }
}