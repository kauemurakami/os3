import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:os_tres/app/theme/app_colors.dart';

class CustomLoading extends Container {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: mainColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}