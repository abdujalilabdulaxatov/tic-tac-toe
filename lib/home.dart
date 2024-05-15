import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tictak/computer/computer_game.dart';
import 'package:tictak/player_name.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;

    Widget button(String name, Color kolor) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: screenW * 0.03),
        width: screenW * 0.8,
        decoration: BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          )
        ]),
        child: Text(
          name,
          style: TextStyle(
              color: kolor,
              fontWeight: FontWeight.bold,
              fontSize: screenW * 0.06),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Computer_game()),
                );
              },
              icon: button('Kompyuter 🎲', Colors.green)),
          Gap(20),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Names(
                            choose: 'Player',
                          )),
                );
              },
              icon: button('Player 🎮', Colors.red)),
        ],
      ),
    );
  }
}
