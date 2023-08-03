import 'package:flutter/material.dart';

const tileMode = TileMode.mirror;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Widget child;

  const GradientContainer(this.colors, this.child, {super.key});

  GradientContainer.purple(this.child, {super.key})
      : colors = [
          const Color.fromARGB(255, 93, 47, 157),
          const Color.fromARGB(255, 26, 2, 80),
        ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
          tileMode: tileMode,
        ),
      ),
      child: child,
    );
  }
}
