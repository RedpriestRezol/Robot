import 'package:flutter/material.dart';
import 'package:robot/models/field.dart';
import 'package:robot/models/fielf_object.dart';
import 'package:robot/models/robot.dart';
import 'dart:math';
class Game extends ChangeNotifier {
  final field = Field(width: 10,
      length: 20,
      objects: [
        FieldObject(x: Random().nextInt(9) + 1, y: Random().nextInt(19) + 1),
        FieldObject(x: Random().nextInt(9) + 1, y: Random().nextInt(19) + 1),
        FieldObject(x: Random().nextInt(9) + 1, y: Random().nextInt(19) + 1),
        FieldObject(x: Random().nextInt(9) + 1, y: Random().nextInt(19) + 1),
      ]);
  late Robot robot;


  Game(){
    robot = Robot(x: 10, y: 10, field: field);
  }

}