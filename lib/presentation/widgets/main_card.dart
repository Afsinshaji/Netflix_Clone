import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class MainpageCard extends StatelessWidget {
  const MainpageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(kMainImage))),
    );
  }
}
