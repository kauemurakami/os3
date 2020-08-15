import 'package:flutter/material.dart';

class CustomItemGrid extends Container {

  final jogo;

  CustomItemGrid({this.jogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(this.jogo.imageUrl),
    );
  }
}