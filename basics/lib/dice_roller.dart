import 'dart:math';

import 'package:basics/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dice = 2;
  final Random random = Random.secure();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$dice.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(padding: const EdgeInsets.all(10.0)),
            child: const StyledText("Yippiekayee, MTF"),
          )
        ],
      ),
    );
  }

  void rollDice() {
    setState(() {
      dice = random.nextInt(6) + 1;
    });
  }
}
