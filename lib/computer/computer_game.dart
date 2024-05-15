import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Computer_game extends StatefulWidget {
  Computer_game({super.key});

  @override
  State<Computer_game> createState() => _Computer_gameState();
}

class _Computer_gameState extends State<Computer_game> {
  String player = 'X';

  List<List<Map<dynamic, dynamic>>> lst = [
    [
      {'name': '', 'check': false},
      {'name': '', 'check': false},
      {'name': '', 'check': false}
    ],
    [
      {'name': '', 'check': false},
      {'name': '', 'check': false},
      {'name': '', 'check': false}
    ],
    [
      {'name': '', 'check': false},
      {'name': '', 'check': false},
      {'name': '', 'check': false}
    ]
  ];

  dynamic turn(String name) {
    int count_p1 = 0;
    int count_p2 = 0;
    int count_r = 0;
    for (int i = 0; i < 3; i++) {
      if (lst[i][i]['name'] == player) {
        print(lst[i][i]['name']);
        print(count_p1);
        count_p1 += 1;
        break;
      }
    }
    if (count_p1 == 3) {
      print('00000');
    }

    // for (int i = 0; i < 3; i++) {
    //   for (int j = 0; j < 3; j++) {
    //     if (lst[i][3 - i - 1]['name'] == player) {
    //       print('$i ${lst.length - i - 1}    $player');
    //       count_p2 += 1;
    //       print(count_p2);
    //       break;
    //     }
    //   }
    // }

    // print('\n\n');
    // if (count_p2 == 3) {
    //   print('objecti');
    // }
    if (name == 'X') {
      player = 'O';
    } else {
      player = 'X';
    }
  }

  Widget container(int i, j) {
    return IconButton(
        onPressed: () {
          setState(() {
            lst[i][j]['name'].isEmpty ? lst[i][j]['name'] = player : null;
            turn(player);
          });
        },
        icon: Container(
          width: 75,
          height: 75,
          color: Colors.grey,
          child: Center(child: Text(lst[i][j]['name'])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Gap(10),
                Container(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: 'Turn: ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 26)),
                        TextSpan(text: player, style: TextStyle(fontSize: 24))
                      ])),
                      const Text(
                        '0 : 0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                  child: Wrap(
                    spacing: 7,
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < lst.length; i++)
                        for (int j = 0; j < lst[i].length; j++) container(i, j)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 300,
                      height: 50,
                      color: Colors.green,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
