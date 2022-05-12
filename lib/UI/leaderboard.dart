import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pacer/Utils/constants.dart';
import 'package:undraw/undraw.dart';

import '../Utils/size_config.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealthyColors.HealthyLightBg,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1 / 4,
            child: UnDraw(
                illustration: UnDrawIllustration.going_up,
                color: HealthyColors.HealthyBeige),
            decoration: BoxDecoration(
                color: HealthyColors.HealthyLeafy,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                )),
          ),
          SizedBox(height: 20),
          Container(
            child: _buildCard(
                color1: HealthyColors.HealthyPink,
                color2: HealthyColors.HealthyRedi,
                color3: HealthyColors.HealthyTeal,
                color4: HealthyColors.HealthyYellow,
                value: 0.8),
          )
        ],
      ),
    );
  }

  Container _buildCard(
      {required Color color1,
      required Color color2,
      required Color color3,
      required Color color4,
      required double value}) {
    return Container(
      height: SizeConfig.blockSizeVertical! * 30,
      // 30% of screen
      width: SizeConfig.blockSizeHorizontal! * 90,
      // 90% of total width of screen
      margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 1),
      decoration: BoxDecoration(
          color: HealthyColors.HealthyCream,
          borderRadius: BorderRadius.circular(20.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: SizeConfig.blockSizeVertical! * 12, // 12% of screen
              width:
                  SizeConfig.blockSizeHorizontal! * 23, // 23% of width of screen
              decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(130),
                      topRight: Radius.circular(20))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: CircleAvatar(
                backgroundColor: color2,
                radius: SizeConfig.blockSizeHorizontal! * 8,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: SizeConfig.blockSizeVertical! * 10, // 12% of screen
              width:
                  SizeConfig.blockSizeHorizontal! * 10, // 23% of width of screen
              decoration: BoxDecoration(
                  color: color3,
                  borderRadius: BorderRadius.only(
                      topRight:
                          Radius.circular(SizeConfig.blockSizeVertical! * 5),
                      bottomRight:
                          Radius.circular(SizeConfig.blockSizeVertical! * 5))),
            ),
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical! * 10,
            left: SizeConfig.blockSizeHorizontal! * 16,
            child: CircleAvatar(
              backgroundColor: color4,
              radius: SizeConfig.blockSizeHorizontal! * 2,
            ),
          ),
          Positioned(
            bottom: SizeConfig.blockSizeVertical! * 5,
            right: SizeConfig.blockSizeHorizontal! * 10,
            child: CircleAvatar(
              backgroundColor: color4,
              radius: SizeConfig.blockSizeHorizontal! * 6,
            ),
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical! * 3,
            left: SizeConfig.blockSizeHorizontal! * 6,
            child: Container(
              child: Row(
                children: [
                  const Icon(CupertinoIcons.person),
                  SizedBox(
                    width: SizeConfig.blockSizeVertical! * 1,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.blockSizeVertical! * 5,
            left: SizeConfig.blockSizeHorizontal! * 6,
            child: Container(),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: SizeConfig.blockSizeVertical! * 1, // 12% of screen
              width:
                  SizeConfig.blockSizeHorizontal! * 75, // 23% of width of screen
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: LinearProgressIndicator(
                    value: value,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                    backgroundColor: HealthyColors.HealthySky.withOpacity(0.2)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
