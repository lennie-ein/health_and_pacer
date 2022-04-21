import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      length: 3,
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
        labels: const ["Events", "Dashboard", 'Leader Board'],
        icons: [
          CupertinoIcons.circle_grid_hex_fill,
          CupertinoIcons.home,
          CupertinoIcons.square_favorites
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
    );
  }
}
