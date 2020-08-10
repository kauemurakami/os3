import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:os_tres/app/modules/cadastro/cadastro_controller.dart';
import 'package:os_tres/app/routes/app_pages.dart';
import 'package:os_tres/app/theme/app_text.dart';
import 'package:os_tres/app/widgets/custom_button_widget.dart';
import 'package:os_tres/app/widgets/custom_buttonback_widget.dart';
import 'package:os_tres/app/widgets/custom_tff_widget.dart';

class CadastroPage extends GetView<CadastroController> {
  static final GlobalKey formKey = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: formKey,
                    child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomButtonBack(),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cadastre-se',
                                      style: title,
                                    ),
                                    Text('E encontre amigos para jogar !')
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 8.0),
                                child: Image.asset('assets/images/ninja.png'),
                              ),
                              CustomTextFormField(
                                text: 'Nome',
                                max: 42,
                                onChanged: (value) =>
                                    controller.onChangedNome(value),
                                validator: (value) =>
                                    controller.validateNome(value),
                                onSaved: (value) =>
                                    controller.onSavedNome(value),
                                type: TextInputType.text,
                              ),
                              CustomTextFormField(
                                text: 'Email',
                                max: 42,
                                onChanged: (value) =>
                                    controller.onChangedEmail(value),
                                validator: (value) =>
                                    controller.validateEmail(value),
                                onSaved: (value) =>
                                    controller.onSavedEmail(value),
                                type: TextInputType.emailAddress,
                              ),
                              CustomTextFormField(
                                text: 'Senha',
                                max: 12,
                                onChanged: (value) =>
                                    controller.onChangedSenha(value),
                                validator: (value) =>
                                    controller.validateSenha(value),
                                onSaved: (value) =>
                                    controller.onSavedSenha(value),
                                type: TextInputType.text,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: CustomButtonWidget(
                                  text: 'Registrar',
                                  callback: () async {
                                    final FormState form = formKey.currentState;
                                    if (form.validate()) {
                                      form.save();
                                      scaffoldKey.currentContext
                                          .showLoaderOverlay();
                                      await controller.cadastrar();
                                      scaffoldKey.currentContext
                                          .hideLoaderOverlay();
                                      Get.offAllNamed(Routes.HOME,
                                          arguments: controller.user);
                                    }
                                  },
                                ),
                              )
                            ]))))));
  }
}
