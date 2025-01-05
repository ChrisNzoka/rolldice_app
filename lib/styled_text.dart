import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // StyledText(String text, {super.key}): outputText = text; //String Text is added as an argument here. it's totally different from the variable below
  const StyledText(this.text, {super.key});   //this a shortcut to the verbose commented out above

  final String text; // variable created using string to show the kind of value it accepts.
  //the above variable can still be written as "var text"
  //"final" ensures the variable is not reset

  @override //overides a method expected by statelesswidget
  Widget build(context) {
    return Text(
      text, //instead of the text like 'Hello world', we'll add a variable as a placeholder
      style: const TextStyle(
        color: Color.fromARGB(255, 193, 245, 5),
        fontSize: 28,
      ),
    );
  }
}
