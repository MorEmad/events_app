import 'package:events_app/view/widgets/slider_card.dart';
import 'package:flutter/cupertino.dart';

import '../../../../consts/general_constant.dart';
import '../../../../data/app_data.dart';

class Sliders extends StatelessWidget {
  const Sliders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(
          height: MyMediaQuery(context).height * 0.3,
          width: MyMediaQuery(context).width * 0.8,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (contex, index) => SliderCard(
                image: slidrs[index].image,
                desc: slidrs[index].desc,
              ),
              itemCount: slidrs.length),
        ),
      ]),
    );
  }
}