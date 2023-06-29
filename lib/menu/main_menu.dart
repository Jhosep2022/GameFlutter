import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:juego2d/my_game.dart';

class MainMenu extends StatelessWidget {
  static const id = 'MainMenu';
  MyGame gameRef;
  MainMenu( this.gameRef);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.black.withOpacity(0.5),
              child: Wrap(
                children: [
                  Text("Loki Poki"),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/game");
                    },
                    child: Text("Play", style: TextStyle(fontSize: 30)),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/settings");
                      },
                      child: Text("Settings", style: TextStyle(fontSize: 30)))
                ],
              ),
            )));
  }
}
