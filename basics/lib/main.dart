import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

import 'package:basics/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer.purple(const DiceRoller()),
          ),
    ),
  );
}
