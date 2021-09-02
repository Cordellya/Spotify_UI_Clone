import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:spotify_clone_ui/screen/widget/DailyMixContainer.dart';
import 'package:spotify_clone_ui/screen/widget/RecentContainer.dart';
import 'package:spotify_clone_ui/screen/widget/TopMixesContainer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.teal[200].withOpacity(0.9),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                  ]),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recently Played',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Icon(
                          Icons.settings,
                        ),
                      ],
                    ),
                  ),
                  RecentContainer(),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: DailyMixContainer(),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TopMixesContainer(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
