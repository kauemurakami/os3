import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/modules/login/login_controller.dart';
import 'package:os_tres/app/routes/app_pages.dart';
import 'package:os_tres/app/theme/app_colors.dart';
import 'package:os_tres/app/theme/app_text.dart';
import 'package:os_tres/app/widgets/custom_button_widget.dart';
import 'package:os_tres/app/widgets/custom_tff_widget.dart';

class LoginPage extends GetView<LoginController> {
  final formKey = GlobalKey<FormState>(debugLabel: 'gg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Form(
        key: formKey,
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Text(
                    'Login',
                    style: title,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Image.asset('assets/images/gamers.png'),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTextFormField(
                      onChanged: (value) => controller.onChangeEmail(value),
                      onSaved: (value) => controller.onSavedEmail(value),
                      validator: (value) => controller.validateEmail(value),
                      text: 'Email',
                      type: TextInputType.emailAddress,
                      max: 42,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: controller.isEmail ? mainColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTextFormField(
                      onChanged: (value) => controller.onChangeSenha(value),
                      onSaved: (value) => controller.onSavedSenha(value),
                      validator: (value) => controller.validateSenha(value),
                      text: 'Senha',
                      obscure: controller.obscure,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      iconSize: 30,
                      color: controller.obscure ? Colors.grey : mainColor,
                      onPressed: () => controller.show(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CustomButtonWidget(
                  text: 'ENTRAR',
                  callback: () async {
                    final FormState form = formKey.currentState;
                    if (form.validate()) {
                      form.save();
                      Get.overlayContext.showLoaderOverlay();
                      if(await controller.login()){
                      Get.overlayContext.hideLoaderOverlay();
                      Get.offAllNamed(Routes.HOME, arguments: controller.user);
                      }else {
                      Get.overlayContext.hideLoaderOverlay();
                      print('erro ao logar');
                      }
                    }
                  }),
            ),
            GestureDetector(
              onTap: () => controller.cadastro(),
              child: Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Column(
                    children: [
                      Text(
                        'Ainda não tem conta?',
                        style: descricaoLogin,
                      ),
                      Text(
                        'Cadastre-se gratuitamente aqui !',
                        style: descricaoLogin,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ),
          ]),
        ),
      )),
    ));
  }
}