import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;

  static late double wight, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    wight = MediaQuery.sizeOf(context).width;
  }
}
