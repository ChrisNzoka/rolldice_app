import 'package:flutter/material.dart';

import 'package:rolldice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //for backround decoration
        body: GradientContainer(
          const Color.fromARGB(255, 81, 3, 3),
          const Color.fromARGB(255, 107, 19, 19),
        ),
      ),
    ),
  );
}
