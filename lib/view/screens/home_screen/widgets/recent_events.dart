import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/general_constant.dart';
import '../../../../consts/style_constant.dart';
import '../../../../data/app_data.dart';
import '../../view_all_screen/veiw_all_screen.dart';
import '../../../widgets/event_card.dart';

class RecentEvents extends StatelessWidget {
  const RecentEvents({
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
                      builder: (context) => const VeiwAllScreen()));
                },
                child: const Text(
                  "عرض الكل",
                  style: TextStyle(
                      color: appStyle.grayColor3,
                      fontSize: appStyle.primaryFontSize),
                ),
              ),
              const Text(
                "الاحداث الاخيرة",
                style: TextStyle(
                    color: appStyle.black,
                    fontSize: appStyle.titleFontSize,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: MyMediaQuery(context).height * 0.3,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => EventCard(
                width: MyMediaQuery(context).width * 0.6,
                eventModel: events[events.length -index -1],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              itemCount: events.length),
        ),
      ]),
    );
  }
}