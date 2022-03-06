import 'package:bmi_calculator/calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiValue;
  final String bmiResult;
  final String bmiInterpretation;

  ResultPage({
    required this.bmiInterpretation,
    required this.bmiResult,
    required this.bmiValue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Your Result',
              style: kNumberTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: 1,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmiResult,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    bmiValue,
                    style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                  ))),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmiInterpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          CalculateButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
