import 'package:flutter/material.dart';

import '../../consts/general_constant.dart';
import '../../consts/style_constant.dart';
import '../../utils/my_cached_network_image.dart';



class SliderCard extends StatelessWidget {
   SliderCard({
    super.key,
    required this.image,
    required this.desc,
    this.onTap,
  });

  void Function()? onTap;
  String image;
  String desc;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 8.0, vertical: 16),
        child: Stack(
          children: [
            SizedBox(
              width: MyMediaQuery(context).width * 0.9,
              child:  MyCachedNetworkImage(
                imageUrl: image,
              ),
            ),
             Positioned(
              bottom: 20,
              right: 20,
              child: Text(
               desc,
                style: const TextStyle(
                    color: appStyle.white,
                    fontSize: appStyle.primaryFontSize,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}