
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  AppIcons._();

  //
  static const String _basePath = "assets/svg/";
  //** */

  static String heart_outlined = _svgPath("heart_outlined");
  static String location = _svgPath("location");
  static String home = _svgPath("home");
  static String profile = _svgPath("profile");
  static String search = _svgPath("search");
  static String bell = _svgPath("bell");





  /// to get svg image
  static String _svgPath(String name) {
    return "$_basePath$name.svg";
  }

  static SvgPicture getSvg(String path,
      {Color? color, BoxFit? fit, double? width, double? height}) {
    return SvgPicture.asset(
      path,
      color: color,
      fit: fit ?? BoxFit.contain,
      width: width,
      height: height,
    );
  }

}
