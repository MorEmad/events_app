import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/general_constant.dart';
import '../../../consts/style_constant.dart';
import '../../../data/app_data.dart';
import '../../widgets/event_card.dart';

class VeiwAllScreen extends StatelessWidget {
  const VeiwAllScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon:  const Icon(
                Icons.arrow_forward,
                color: appStyle.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: events.length
          ,
          itemBuilder: (BuildContext ctx, index) {
            return SizedBox(
                child: EventCard(
                 eventModel: events[index],
                ));
          },

        ),
      ),

    );
  }
}
