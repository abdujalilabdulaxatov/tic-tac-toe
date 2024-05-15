import 'package:flutter/material.dart';
import 'package:tictak/home.dart';

void main(List<String> args) {
  runApp(TicTac());
}

class TicTac extends StatelessWidget {
  const TicTac({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(color: Colors.black, boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
              )
            ]),
            child: AppBar(
              backgroundColor: Colors.black,
              elevation: 0.0,
              title: const Text(
                "TicTacToe",
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: Home(),
      ),
    );
  }
}
