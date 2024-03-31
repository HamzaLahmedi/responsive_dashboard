import 'package:flutter/material.dart';

class SizeConfig {
  static const double tablet = 800;
  static const double desktop = 1200;

  static late double height, width;

  static int(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
