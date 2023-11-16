import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/general_constant.dart';
import '../../../../consts/style_constant.dart';
import '../../../../data/app_data.dart';
import '../../view_all_screen/veiw_all_screen.dart';
import '../../../widgets/event_card.dart';

class SpecialEvents extends StatelessWidget {
  const SpecialEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.only(
              top: 24, bottom: 8, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VeiwAllScreen()));
                },
                child: const Text(
                  "عرض الكل",
                  style: TextStyle(
                      color: appStyle.grayColor3,
                      fontSize: appStyle.primaryFontSize),
                ),
              ),
              const Text(
                "الاحداث المميزة",
                style: TextStyle(
                    color: appStyle.black,
                    fontSize: appStyle.titleFontSize,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MyMediaQuery(context).height * 0.3,
          width: MyMediaQuery(context).width * 0.8,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (contex, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: EventCard(
                  width: MyMediaQuery(context).width * 0.6,
                  eventModel: events[index],
                ),
              ),
              itemCount: events.length),
        ),
      ]),
    );
  }
}