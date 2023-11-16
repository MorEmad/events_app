import 'package:flutter/material.dart';

import '../../../consts/style_constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const Center(
          child: Text(
            "Profile Screen",
            style: TextStyle(
                color: appStyle.primaryColor,
                fontWeight: FontWeight.normal,
                fontSize: appStyle.largeTitleFontSize),
          ),
        ));
  }
}
