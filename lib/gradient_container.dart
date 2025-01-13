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
  const GradientContainer(this.myGradientStart, this.myGradientend,
      {super.key});
  final Color myGradientStart;
  final Color myGradientend;
  //Note, this means that two argument are required for this widget on the main.dart code

  @override //overides a method expected by statelesswidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        //container holds the background decoration. Thus, we'll remove the background color argument from scaffold widget
        gradient: LinearGradient(
            colors: [
              myGradientStart,
              myGradientend
            ], //background color gradient
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-3.png', width: 200),
      ),
    );
  }
}

// Below is the named argument alternative for setting up myGradient var above

// class GradientContainer extends StatelessWidget {
//   //adds a lot of logic to the custom class behind the scene
//   const GradientContainer({super.key, required this.myGradient});
//   final List<Color> myGradient;

//   @override //overides a method expected by statelesswidget
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         //container holds the background decoration. Thus, we'll remove the background color argument from scaffold widget
//         gradient: LinearGradient(
//             colors: myGradient, //background color gradient
//             begin: startAlignment,
//             end: endAlignment),
//       ),
//       child: const Center(
//         child: StyledText("Yelloo PIIPUUU"),
//       ),
//     );
//   }
// }
