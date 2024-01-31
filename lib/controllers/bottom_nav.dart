import 'package:flutter/material.dart';
import 'package:safe_hub_ui/views/Screens/coworking_space.dart';
import 'package:safe_hub_ui/views/Screens/events.dart';
import 'package:safe_hub_ui/views/Screens/aboutpage.dart';
import 'package:safe_hub_ui/views/Screens/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    EventScreen(),
    CoWorkingSpace(),
    LeadershipAcademyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: MotionTabBar(
        labels: const ["Home", "Event", "coWorking", "leadershipacademy"],
        initialSelectedTab: "Home",
        tabIconColor: Colors.brown[300],
        tabSelectedColor: Colors.orangeAccent[100],// Set the background color to transparent
        onTabItemSelected: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        icons: const [
          Icons.home,
          Icons.event,
          Icons.rss_feed_rounded,
          Icons.info,
        ],
        textStyle: const TextStyle(color: Colors.orangeAccent),
      ),
    );
  }
}
