import 'package:flutter/material.dart';
import 'package:plant_app/app/data/utils/constants.dart';

class FeaturePlant extends StatelessWidget {
  const FeaturePlant({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            size: size,
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            size: size,
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
