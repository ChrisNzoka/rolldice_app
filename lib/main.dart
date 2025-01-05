import 'package:flutter/material.dart';

import 'package:rolldice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //for backround decoration
        body: GradientContainer(),
      ),
    ),
  );
}
