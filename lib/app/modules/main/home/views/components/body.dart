import 'package:flutter/material.dart';
import 'featuePlant.dart';

import 'headerHome.dart';
import 'titleWithMore.dart';
import 'recomendedPlant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(size: size),
          TitleWithMore(title: "Recomended", press: () {}),
          RecomendedPlant(size: size),
          TitleWithMore(title: "Featured Plants", press: () {}),
          FeaturePlant(size: size),
        ],
      ),
    );
  }
}
