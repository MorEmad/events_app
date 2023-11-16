import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/style_constant.dart';
import '../../../../data/app_data.dart';
import '../../category_details_screen/category_details_screen.dart';
import '../../../widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const Padding(
          padding: EdgeInsets.only(
            top: 24,
            bottom: 8,
            left: 16,
            right: 16,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "اصناف الاحداث",
              style: TextStyle(
                  color: appStyle.black,
                  fontSize: appStyle.titleFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (contex, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CategoryCard(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CategoryDetailsScreen(
                          title: categorys[index].title,
                        )));
                  },
                  image: categorys[index].image,
                  title: categorys[index].title,
                ),
              ),
              itemCount: categorys.length),
        ),
      ]),
    );
  }
}