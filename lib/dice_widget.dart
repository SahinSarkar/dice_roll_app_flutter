import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RandomDice extends StatefulWidget {

  RandomDice({super.key});

  @override
  State<RandomDice> createState() {
    return _RandomDiceState();
  }

}

class _RandomDiceState extends State<RandomDice> {

  int diceNum = 5;

  void rollDice() {

    setState(() {
      diceNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$diceNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 30)),
          child: const Text('Roll dice'),
        ),
      ],
    );
  }
}
