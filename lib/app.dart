import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robot/notifier/game_notifier.dart';
import 'package:robot/widget/bottombar.dart';
import 'package:robot/widget/field.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Game()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.brown,
          body: Column(
            children: [MyField(), BottomBar()],
          ),
        ),
      ),
    );
  }
}
