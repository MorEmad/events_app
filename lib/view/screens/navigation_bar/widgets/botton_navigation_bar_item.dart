import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


import '../../../../consts/style_constant.dart';
import '../../../../provider/nav_bar_provider.dart';
import '../../../../utils/AppIcon.dart';
import '../../../widgets/custom_divider.dart';

// ignore: must_be_immutable
class ButtonNavBarItem extends StatelessWidget {
  ButtonNavBarItem({
    super.key,
    required this.index,
    required this.svgIconPath,
  });

  int index;
  String svgIconPath;

  @override
  Widget build(BuildContext context) {
    final navBarProvider = Provider.of<NavBarProvider>(context);

    return SizedBox(
      height: 48,
      child: GestureDetector(
        child: Column(
          children: [
            const SizedBox(
              height: 2,
            ),
            AppIcons.getSvg(
              svgIconPath,
              height: appStyle.iconSize2,
              color: navBarProvider.iconColor(index: index),
            ),
            const SizedBox(
              height: 2,
            ),
            navBarProvider.selectedIndex == index
                ? const CustomDot(
                    height: 5,
                    color: appStyle.primaryColor,
                  )
                : const SizedBox(),
          ],
        ),
        onTap: () {
          navBarProvider.onItemTapped(index);
        },
      ),
    );
  }
}
