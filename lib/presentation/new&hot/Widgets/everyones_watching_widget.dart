import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(
            fontSize: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Landing the lead in the school is a dream come true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspain.',
          style: TextStyle(color: kGreyColor),
        ),
        kHeight50,
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                icon: Icons.send, title: 'Share', fontsize: 25, iconsize: 16),
            kWidth,
            CustomButtonWidget(
                icon: Icons.add, title: 'My List', fontsize: 25, iconsize: 16),
            kWidth,
            CustomButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                fontsize: 25,
                iconsize: 16),
            kWidth,
          ],
        )
      ],
    );
  }
}
