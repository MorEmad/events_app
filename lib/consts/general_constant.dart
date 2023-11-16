import 'package:flutter/cupertino.dart';


class MyMediaQuery{
  BuildContext context;

  MyMediaQuery(this.context) : assert (context != null);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

