import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robot/notifier/game_notifier.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.greenAccent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Transform.rotate(angle: 8,
            child: IconButton(
              onPressed: () {
                context.read<Game>().robot.moveLeft();
                context.read<Game>().notifyListeners();
              },
              icon: Icon(Icons.arrow_circle_down,color: Colors.green,size: 40,),
            ),
          ),
          Transform.rotate(angle: 90 * 3.14 /90,
            child: IconButton(
              onPressed: () {
                context.read<Game>().robot.moveUp();
                context.read<Game>().notifyListeners();
              },
              icon: Icon(Icons.arrow_circle_down,color: Colors.green,size: 40,),
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<Game>().robot.moveDown();
              context.read<Game>().notifyListeners();
            },
            icon: Icon(Icons.arrow_circle_down,color: Colors.green,size: 40,),
          ),
          Transform.rotate(angle: 5,
            child: IconButton(
              onPressed: () {
                context.read<Game>().robot.moveRight();
                context.read<Game>().notifyListeners();
              },
              icon: Icon(Icons.arrow_circle_down,color: Colors.green,size: 40,),
            ),
          ),
          IconButton(
            onPressed: () {
              if (context.read<Game>().robot.object == null) {
                context.read<Game>().robot.take();
                context.read<Game>().notifyListeners();
              } else {
                context.read<Game>().robot.give();
                context.read<Game>().notifyListeners();
              }
            },
            icon: Icon(
              Icons.wifi_protected_setup, color: Colors.green,size: 40,
            ),
          )
        ],
      ),
    );
  }
}
