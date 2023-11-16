import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/style_constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const Center(
          child: Text(
            "Search Screen",
            style: TextStyle(
                color: appStyle.primaryColor,
                fontWeight: FontWeight.normal,
                fontSize: appStyle.largeTitleFontSize),
          ),
        ));
  }
}
