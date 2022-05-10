import 'package:flutter/material.dart';
import 'package:healthy_pacer/Utils/constants.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealthyColors.HealthyWhite,
    );
  }
}
