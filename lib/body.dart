import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/fetured_plant.dart';
import 'package:plantapp/screens/heder_with_searchbox.dart';
import 'package:plantapp/screens/recomended_plants.dart';
import 'package:plantapp/screens/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HederWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendedPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeturedPlants(),
          SizedBox(
            height: KDefaultPadding,
          )
        ],
      ),
    );
  }
}
