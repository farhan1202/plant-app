import 'package:flutter/material.dart';
import 'package:plant_app/app/data/utils/constants.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 24,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            FlatButton(
                onPressed: press,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                child: Text(
                  "More",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}
