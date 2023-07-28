import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

import 'Widgets/coming_soon_widget.dart';
import 'Widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
                titleSpacing: 0,
                bottom: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: kWhiteColor,
                    labelColor: kBlackColor,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                        color: kWhiteColor, borderRadius: kRadius30),
                    tabs: const [
                      Tab(
                        text: '🍿Coming Soon',
                      ),
                      Tab(text: "👀 Everyone's watching"),
                    ]),
                title: const AppBarWidget(title: 'New & Hot'))),
        body: SafeArea(
            child: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryonesWatching(),
        ])),
      ),
    );
  }

  _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const ComingSoonWidget();
      },
      itemCount: 10,
    );
  }

  _buildEveryonesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const EveryOnesWatchingWidget();
        });
  }
}
