import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //adds a lot of logic to the custom class behind the scene
  const GradientContainer({super.key});

  @override //overides a method expected by statelesswidget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        //container holds the background decoration. Thus, we'll remove the background color argument from scaffold widget
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(66, 1, 33, 59),
            Color.fromARGB(66, 88, 164, 226),
          ], //background color gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
