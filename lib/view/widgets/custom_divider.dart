import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style_constant.dart';

// class CustomDivider extends StatelessWidget {
//   const CustomDivider({
//     Key? key,
//     this.height = 1,
//     this.color = appStyle.grayColor2,
//     this.width = 100,
//   }) : super(key: key);
//   final double height;
//   final double width;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       width: width,
//       color: color,
//     );
//   }
// }

// divider with radius
class CustomDot extends StatelessWidget {
  const CustomDot({
    Key? key,
    this.height = 5,
    this.color = appStyle.grayColor2,

  }) : super(key: key);
  final double height;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      height: height,
      width: height,
    );
  }
}

// class CustomDivider3 extends StatelessWidget {
//   const CustomDivider3({
//     Key? key,
//     this.height = 1,
//     this.color = appStyle.grayColor2,
//     this.width = 100,
//   }) : super(key: key);
//   final double height;
//   final double width;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(6.sp),
//       ),
//       height: height,
//       width: width,
//     );
//   }
// }
