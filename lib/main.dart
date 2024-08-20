import 'package:flutter/material.dart';
import 'package:dice_roll_app/gradient_widget.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientWidget(
          colorsForGradient: const [
            Colors.purple,
            Colors.deepPurple,
            Colors.indigoAccent,
            Colors.indigo
          ],
        ),
      ),
    ),
  );
}
