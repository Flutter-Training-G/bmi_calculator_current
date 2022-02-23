import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Color(0XFF0A0D22)
        ),
        scaffoldBackgroundColor: Color(0XFF0A0D22)
      )
      
    );
  }
}

