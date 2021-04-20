import 'dart:ui';

import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData.fromWindow(window);
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double screenHeightWithoutTabBar = 0.0;
  static double defaultSize = 0.0;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenHeightWithoutTabBar = screenHeight - 150;
    orientation = _mediaQueryData.orientation;
  }
}

/// Get the proportionate height as per screen size
double getHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

/// Get the proportionate height as per screen size
double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
