import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('FEB',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kGreyColor)),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                )
              ]),
        ),
        SizedBox(
          height: 450,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications_none,
                        title: 'Remind me',
                        iconsize: 20,
                        fontsize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                        iconsize: 20,
                        fontsize: 12,
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              const Text('Coming on Friday'),
              kHeight,
              Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Landing the lead in the school is a dream come true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspain.',
                style: TextStyle(color: kGreyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
