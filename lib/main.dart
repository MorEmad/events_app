import 'package:flutter/material.dart';
import 'package:events_app/provider/nav_bar_provider.dart';
import 'package:events_app/view/screens/navigation_bar/navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => NavBarProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomNavBarWidget(),
      ),
    );
  }
}
