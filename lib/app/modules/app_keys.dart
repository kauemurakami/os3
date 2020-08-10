import 'package:flutter/material.dart';

abstract class AppKeys {
  static final GlobalKey formKey = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
}
