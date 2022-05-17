import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pacer/Utils/constants.dart';
import 'package:undraw/undraw.dart';



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
          //Container( )
        ],
      ),
    );
  }

}
