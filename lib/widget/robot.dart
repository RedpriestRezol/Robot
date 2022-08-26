import 'package:flutter/material.dart';
import 'package:robot/models/robot.dart';
import 'package:provider/provider.dart';

class MyRobot extends StatefulWidget {
  const MyRobot({Key? key}) : super(key: key);

  @override
  State<MyRobot> createState() => _MyRobotState();
}

class _MyRobotState extends State<MyRobot> {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/robot.png');
  }
}
