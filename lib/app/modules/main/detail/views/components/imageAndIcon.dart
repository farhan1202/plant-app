import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/data/utils/constants.dart';

import 'iconcard.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({Key? key, required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    Spacer(),
                    IconCard(size: size, icon: "assets/icons/sun.svg"),
                    IconCard(size: size, icon: "assets/icons/icon_2.svg"),
                    IconCard(size: size, icon: "assets/icons/icon_3.svg"),
                    IconCard(size: size, icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.3)),
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.png"),
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
