import 'package:dice_roll_app/dice_widget.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientWidget extends StatelessWidget {
  GradientWidget(
      {super.key, this.colorsForGradient = const []});

  final List<Color> colorsForGradient;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colorsForGradient,
        ),
      ),
      child: Center(
        child: RandomDice()
      ),
    );
  }
}
