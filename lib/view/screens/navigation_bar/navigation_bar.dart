import 'package:flutter/material.dart';
import 'package:events_app/utils/AppIcon.dart';
import 'package:events_app/view/screens/navigation_bar/widgets/botton_navigation_bar_item.dart';
import 'package:provider/provider.dart';

import '../../../consts/general_constant.dart';
import '../../../consts/style_constant.dart';
import '../../../provider/nav_bar_provider.dart';
import '../home_screen/home_screen.dart';
import '../other_screens/favorite_screen.dart';
import '../other_screens/profile_screen.dart';
import '../other_screens/search_screen.dart';

class CustomNavBarWidget extends StatefulWidget {
  static const String routeName = '/NavigatonBar';

  const CustomNavBarWidget({super.key});

  @override
  State<CustomNavBarWidget> createState() => _CustomNavBarWidgetState();
}

class _CustomNavBarWidgetState extends State<CustomNavBarWidget> {
  // ignore: non_constant_identifier_names
  List<Widget> Pages = const [
    ProfileScreen(),
    FavoriteScreen(),
    SearchScreen(),
    HomeScreen(),
  ];
  Color iconColor = appStyle.primaryColor;
  double iconSize = 32;

  @override
  Widget build(BuildContext context) {
    final navBarProvider = Provider.of<NavBarProvider>(context);

    return Scaffold(
      body: Pages[navBarProvider.selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: MyMediaQuery(context).height * 0.075,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNavBarItem(
                index: 0,
                svgIconPath: AppIcons.profile,
              ),
              ButtonNavBarItem(
                index: 1,
                svgIconPath: AppIcons.heart_outlined,
              ),
              ButtonNavBarItem(
                index: 2,
                svgIconPath: AppIcons.search,
              ),
              ButtonNavBarItem(
                index: 3,
                svgIconPath: AppIcons.home,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
