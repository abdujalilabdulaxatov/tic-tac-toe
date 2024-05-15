import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tictak/computer/computer_game.dart';
import 'package:tictak/player/player_game.dart';

class Names extends StatelessWidget {
  String choose;
  Names({required this.choose, super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;

    TextEditingController titleController = TextEditingController();
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                  labelText: 'Enter name: ',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
              style: TextStyle(color: Colors.white),
            ),
            Gap(30),
            IconButton(
              onPressed: () {
                titleController.text.isNotEmpty
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PLayer_game(name: choose)))
                    : null;
              },
              icon: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: screenW * 0.5,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    border: Border.all(color: Colors.green),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      )
                    ]),
                child: const Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
