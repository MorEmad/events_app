import 'package:flutter/material.dart';
import 'package:events_app/consts/general_constant.dart';
import 'package:events_app/consts/style_constant.dart';

import '../../data/model/evelnt_model.dart';
import '../../utils/my_cached_network_image.dart';

class EventCard extends StatelessWidget {
  EventCard(
      {super.key,
      required this.eventModel,
      this.width = 120,
      this.isGradCard = false});

  EventModel eventModel;
  final double width;
  bool isGradCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: appStyle.primaryBgColor,
          border: Border.all(width: 1.5, color: appStyle.grayColor),
        ),
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: isGradCard
                  ? MyMediaQuery(context).width * 0.26
                  : MyMediaQuery(context).width * 0.36,
              width: MyMediaQuery(context).width,
              child: MyCachedNetworkImage(
                imageUrl: eventModel.image,
                borderRadiusValue: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    eventModel.title,
                    style: TextStyle(
                        color: appStyle.black,
                        fontSize: isGradCard
                            ? appStyle.primaryFontSize
                            : appStyle.titleFontSize,
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                    // textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: isGradCard
                            ? MyMediaQuery(context).width * 0.3
                            : MyMediaQuery(context).width * 0.43,
                        child: Text(
                          eventModel.date,
                          style: TextStyle(
                              color: appStyle.grayColor3,
                              fontSize: isGradCard
                                  ? appStyle.smallFontSize
                                  : appStyle.primaryFontSize,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.calendar_month,
                        color: appStyle.grayColor3,
                        size: isGradCard
                            ? appStyle.iconSize4
                            : appStyle.iconSize3,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: isGradCard
                            ? MyMediaQuery(context).width * 0.3
                            : MyMediaQuery(context).width * 0.43,
                        child: Text(
                          eventModel.address,
                          style: TextStyle(
                              color: appStyle.grayColor3,
                              fontSize: isGradCard
                                  ? appStyle.smallFontSize
                                  : appStyle.primaryFontSize,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: appStyle.grayColor3,
                        size: isGradCard
                            ? appStyle.iconSize4
                            : appStyle.iconSize3,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
