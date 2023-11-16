import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style_constant.dart';
import '../../utils/my_cached_network_image.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image;
  final String title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: appStyle.primaryColor,
              ),
              width: 72,
              height: 72,
              child: MyCachedNetworkImage(
                imageUrl: image,
                borderRadiusValue: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: appStyle.smallFontSize),
          ),
        ],
      ),
    );
  }
}
