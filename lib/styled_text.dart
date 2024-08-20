import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.displayTxt, {super.key});

  final String displayTxt;

  @override
  Widget build(context) {
    return Text(
      displayTxt,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    );
  }
}