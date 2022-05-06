import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pacer/UI/eventsscreen.dart';
import 'package:healthy_pacer/UI/healthscreen.dart';
import 'package:healthy_pacer/UI/leaderboard.dart';
import 'package:healthy_pacer/Utils/constants.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Dashboard",
        labels: const ["Events", "Dashboard", 'Leader Board','Health'],
        icons: const [
          CupertinoIcons.circle_grid_hex_fill,
          CupertinoIcons.home,
          CupertinoIcons.square_favorites,
          CupertinoIcons.bandage
        ],
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
        tabBarColor: HealthyColors.HealthyLeafy,
        tabSelectedColor: HealthyColors.HealthyNavy,
        tabIconColor: HealthyColors.HealthyNavy,
        textStyle: TextStyle(
            color: HealthyColors.HealthyNavy, fontWeight: FontWeight.bold),
      ),
      body:  TabBarView(children: [
        const EventScreen(),
        Column(),
        const LeaderBoardScreen(),
        const HealthScreen()
      ],
        controller: _tabController,),
    );
  }
}
