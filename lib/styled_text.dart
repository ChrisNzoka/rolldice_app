import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override //overides a method expected by statelesswidget
  Widget build(context) {
    return Text(
      'Hello World!',
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 28,
      ),
    );
  }
}
