import 'package:flutter/material.dart';
import 'package:rolldice_app/dice_roller.dart';

var startAlignment = Alignment.topLeft; //standard variable
var endAlignment = Alignment.bottomRight; // standard variable

//optionally we can use "final" or "const" if we don't want to alter the variable value later e.g
// final endAlighnment = Alignment.bottomRight;
// final startAlignment = Alignment.topLeft;
// ...
// const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  //adds a lot of logic to the custom class behind the scene
  GradientContainer(this.myGradientStart, this.myGradientend, {super.key});
  final Color myGradientStart;
  final Color myGradientend;
  //Note, this means that two argument are required for this widget on the main.dart code
  var diceRollImage = 'assets/images/dice-3.png';
  // The rollDice function serves as the Textbutton onPressed function
  void rollDice() {
    //define function here
    diceRollImage = 'assets/images/dice-2.png';
    print('dice rolled...');
    //the content of this function is how to NOT build interactive widget
  }

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
        child: 
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
