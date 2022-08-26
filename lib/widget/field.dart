import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robot/notifier/game_notifier.dart';
import 'package:robot/widget/robot.dart';
import 'package:robot/widget/trees.dart';

class MyField extends StatelessWidget {
  const MyField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Game>(
      builder: (context, notifier, child) => Expanded(
          child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          fit: StackFit.expand,
          children: [
            ...notifier.field.objects.map((e) => Positioned(
                left: (e.x - 1) * constraints.maxWidth / notifier.field.width,
                top: (e.y - 1) * constraints.maxHeight / notifier.field.length,
                width: constraints.maxWidth / notifier.field.width,
                height: constraints.maxHeight / notifier.field.length,
                child: Tree())),
            Positioned(
              child: MyRobot(),
              width: constraints.maxWidth / notifier.field.width,
              height: constraints.maxHeight / notifier.field.length,
              left: (notifier.robot.x - 1) *
                  constraints.maxWidth /
                  notifier.field.width,
              top: (notifier.robot.y - 1) *
                  constraints.maxHeight /
                  notifier.field.length,
            ),
          ],
        ),
      )),
    );
  }
}
