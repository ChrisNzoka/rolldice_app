import 'package:flutter/material.dart';

import 'package:rolldice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //for backround decoration
        body: GradientContainer(
          Color.fromARGB(255, 81, 3, 3),
          Color.fromARGB(255, 107, 19, 19)
        ),
      ),
    ),
  );
}
