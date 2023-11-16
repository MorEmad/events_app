import 'package:flutter/material.dart';
import 'package:events_app/consts/general_constant.dart';
import 'package:events_app/consts/style_constant.dart';

import '../../../data/app_data.dart';
import '../../widgets/event_card.dart';

class CategoryDetailsScreen extends StatelessWidget {
  CategoryDetailsScreen({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: TextStyle(color: appStyle.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: appStyle.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          itemCount: events.length
          ,
          itemBuilder: (BuildContext ctx, index) {
            return SizedBox(
                child: EventCard(
              isGradCard: true, eventModel: events[index],
            ));
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            mainAxisExtent: MyMediaQuery(context).height * 0.25,
          ),
        ),
      ),
    );
  }
}
