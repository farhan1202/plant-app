import 'package:flutter/material.dart';
import 'package:plant_app/app/data/utils/constants.dart';

class DetailOwnerProduct extends StatelessWidget {
  const DetailOwnerProduct({
    Key? key,
    required this.data,
  }) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data[0]["title"],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 5),
              ),
              Text(
                data[0]["country"],
                style: TextStyle(
                  color: kPrimaryColor.withOpacity(0.5),
                  fontSize: 25,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
          Spacer(),
          Text("\$${data[0]["price"]}",
              style: TextStyle(color: kPrimaryColor, fontSize: 25)),
        ],
      ),
    );
  }
}
