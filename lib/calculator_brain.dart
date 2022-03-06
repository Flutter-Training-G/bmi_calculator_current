import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher body weight than normal. You no go like do small exercise';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than normal body weight. Dey chop abeg.';
    }
  }
}
