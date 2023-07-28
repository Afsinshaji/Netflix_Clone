import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(kMainImage))),
            ),
          ],
        ),
        Positioned(
            left: 20,
            bottom: -30,
            child: BorderedText(
                strokeWidth: 10.0,
                strokeColor: kWhiteColor,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                      color: kBlackColor,
                      fontSize: 140,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.black),
                )))
      ],
    );
  }
}
