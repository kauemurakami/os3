import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/theme/app_colors.dart';

class CustomButtonBack extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: mainColor, size: 30,),
      onPressed: () => Get.back()
    ));
  }
}