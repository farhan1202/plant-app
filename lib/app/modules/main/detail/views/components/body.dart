import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/data/utils/constants.dart';
import 'detailOwnerProduct.dart';
import 'imageAndIcon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var data = Get.arguments;
    return Container(
      height: size.height,
      child: Column(
        children: [
          ImageAndIcon(size: size),
          DetailOwnerProduct(data: data),
          Expanded(child: Container()),
          Row(
            children: [
              Container(
                width: size.width / 2,
                height: 84,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  )),
                  color: kPrimaryColor,
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
