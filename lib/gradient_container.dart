import 'package:flutter/material.dart';
import 'package:rolldice_app/styled_text.dart';

var startAlignment = Alignment.topLeft; //standard variable
var endAlignment = Alignment.bottomRight; // standard variable

//optionally we can use "final" or "const" if we don't want to alter the variable value later e.g
// final endAlighnment = Alignment.bottomRight;
// final startAlignment = Alignment.topLeft;
// ...
// const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  //adds a lot of logic to the custom class behind the scene
  const GradientContainer({super.key});

  @override //overides a method expected by statelesswidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        //container holds the background decoration. Thus, we'll remove the background color argument from scaffold widget
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 52, 5, 65),
              Color.fromARGB(255, 3, 49, 87),
            ], //background color gradient
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
