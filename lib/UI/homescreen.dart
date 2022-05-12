import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pacer/UI/eventsscreen.dart';
import 'package:healthy_pacer/UI/healthscreen.dart';
import 'package:healthy_pacer/UI/leaderboard.dart';
import 'package:healthy_pacer/Utils/constants.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:undraw/undraw.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
        labels: const ["Events", "Dashboard", 'Leaderboard', 'Health'],
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
        tabBarColor: HealthyColors.HealthyBg,
        tabSelectedColor: HealthyColors.HealthyPink,
        tabIconColor: HealthyColors.HealthyDarkGrey,
        tabIconSelectedColor: HealthyColors.HealthyDarkGrey,
        textStyle: TextStyle(
            color: HealthyColors.HealthyDarkGrey, fontWeight: FontWeight.bold),
      ),
      body: TabBarView(
        children: [
          const EventScreen(),
          Column(
            children: [
              UnDraw(
                illustration: UnDrawIllustration.a_day_at_the_park,
                color: HealthyColors.HealthySky,
                height: MediaQuery.of(context).size.height* 2/3,
              )
            ],
          ),
          const LeaderBoardScreen(),
          const HealthScreen()
        ],
        controller: _tabController,
      ),
    );
  }
}
