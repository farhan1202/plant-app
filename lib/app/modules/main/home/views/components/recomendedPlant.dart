import 'package:flutter/material.dart';
import 'package:plant_app/app/data/utils/constants.dart';

class RecomendedPlant extends StatelessWidget {
  const RecomendedPlant({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardPlantRecomended(
            size: size,
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          cardPlantRecomended(
            size: size,
            image: "assets/images/image_2.png",
            title: "Minerva",
            country: "Japan",
            price: 1300,
            press: () {},
          ),
          cardPlantRecomended(
            size: size,
            image: "assets/images/image_3.png",
            title: "Kevin",
            country: "UA",
            price: 500,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class cardPlantRecomended extends StatelessWidget {
  const cardPlantRecomended({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.2),
                  )
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "$title",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$country",
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text("\$$price", style: TextStyle(color: kPrimaryColor)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
