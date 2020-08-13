import 'package:flutter/material.dart';

class CustomItemGrid extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/cs-logo.png'))),
    );
  }
}