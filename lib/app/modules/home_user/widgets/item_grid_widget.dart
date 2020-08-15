import 'package:flutter/material.dart';
import 'package:os_tres/app/theme/app_colors.dart';

class CustomItemGrid extends Container {

  final jogo;

  CustomItemGrid({this.jogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondColor,
      child: Image.network(this.jogo.imageUrl),
    );
  }
}