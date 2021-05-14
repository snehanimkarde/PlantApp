import 'package:flutter/material.dart';
import 'package:plantapp/body.dart';
import '../constants.dart';

class FeturedPlants extends StatelessWidget {
  const FeturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeturedPlantCard extends StatelessWidget {
  const FeturedPlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: KDefaultPadding,
            right: KDefaultPadding / 2,
            bottom: KDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
