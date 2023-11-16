import 'package:flutter/material.dart';
import 'package:events_app/consts/style_constant.dart';

class MyCachedNetworkImage extends StatelessWidget {
  const MyCachedNetworkImage({
    super.key,
    required this.imageUrl,

    this.placeHolderImg = 'assets/images/golden_arrow_placeholder.jpeg',
    this.borderRadiusValue = 24,
    this.border,
  });

  final String imageUrl;
  final String placeHolderImg;

  final double borderRadiusValue;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadiusValue),
      child: Image.network(


        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            placeHolderImg,
            fit: BoxFit.cover,
          );
        },
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            // If the image is fully loaded, return the actual image
            return child;
          } else {
            // If the image is still loading, return a loading indicator
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                    (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
                color: appStyle.grayColor,
              ),
            );
          }
        },
      ),
    );
  }
}


