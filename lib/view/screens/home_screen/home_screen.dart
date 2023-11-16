import 'package:events_app/view/screens/home_screen/widgets/app_bar.dart';
import 'package:events_app/view/screens/home_screen/widgets/categories.dart';
import 'package:events_app/view/screens/home_screen/widgets/recent_events.dart';
import 'package:events_app/view/screens/home_screen/widgets/sliders.dart';
import 'package:events_app/view/screens/home_screen/widgets/special_events.dart';
import 'package:flutter/material.dart';
import '../../../consts/general_constant.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeScreenAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          const Sliders(),
          const Categories(),
          const SpecialEvents(),
          const RecentEvents(),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: MyMediaQuery(context).height * 0.05,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
