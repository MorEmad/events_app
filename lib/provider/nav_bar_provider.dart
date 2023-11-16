import 'package:flutter/material.dart';

import '../consts/style_constant.dart';

class NavBarProvider with ChangeNotifier {
  int get selectedIndex => _selectedIndex;

  int _selectedIndex = 3;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Color iconColor({required int index}) {
    return index == _selectedIndex ? appStyle.primaryColor : appStyle.grayColor;
  }
}
