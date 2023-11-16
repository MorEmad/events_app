import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/style_constant.dart';
import '../../../../utils/AppIcon.dart';


AppBar homeScreenAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: appStyle.grayColor)),
      child: AppIcons.getSvg(AppIcons.bell, height: appStyle.iconSize4),
    ),
    actions: [
      const Icon(
        Icons.keyboard_arrow_down,
        color: appStyle.black,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 16.0, left: 8, right: 8),
        child: Text(
          "بغداد",
          style: TextStyle(
              color: appStyle.black,
              fontSize: appStyle.largeTitleFontSize,
              fontWeight: FontWeight.bold),
        ),
      ),
      AppIcons.getSvg(AppIcons.location,
          color: appStyle.black, height: appStyle.iconSize2),
      const SizedBox(
        width: 16,
      ),
    ],
  );
}
