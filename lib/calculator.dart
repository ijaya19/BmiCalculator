import 'dart:math';

class Calculator {
   int height = 150;
   int weight = 40;
  double _bmi = 0.0;
 
  Calculator({required this.height,required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getSimpleResult() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight. Try to exercise more';
    else if (_bmi > 18.5)
      return 'You have a Normal body weight';
    else
      return 'You have lower than normal body weight. Try to eat more';
  }
}
