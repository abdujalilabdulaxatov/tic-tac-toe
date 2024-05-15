import 'package:flutter/material.dart';

String player_name = '';

class PLayer_game extends StatefulWidget {
  String name;
  // player_name = name;
  PLayer_game({required this.name, super.key});

  @override
  State<PLayer_game> createState() => _PLayer_gameState();
}

class _PLayer_gameState extends State<PLayer_game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [Text('')],
        ),
      ),
    );
  }
}
