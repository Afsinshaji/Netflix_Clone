import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double fontsize;
  const CustomButtonWidget(
      {Key? key,
      required this.icon,
      required this.title,
      required this.fontsize,
      required this.iconsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: fontsize),
        )
      ],
    );
  }
}
