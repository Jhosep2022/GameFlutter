import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'menu/main_menu.dart';
import 'my_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MyGame myGame;
  @override
  void initState() {
    myGame = MyGame();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: myGame,
      overlayBuilderMap: {
        MainMenu.id: (_ , MyGame gameRef) => MainMenu(gameRef),
      },
      initialActiveOverlays: [MainMenu.id],
    );
  }
}
