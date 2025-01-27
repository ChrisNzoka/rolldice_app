import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState()
  }
}

class _DiceRollerState extends State<DiceRoller>{
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min, //centers column content vertically
          children: [
            Image.asset(
              diceRollImage,
              width: 200,
            ),
            //SizedBox(height: 20,) alternative to adding padding within the text widget
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Just Roll"),
            )
          ],
        ),
  }
}