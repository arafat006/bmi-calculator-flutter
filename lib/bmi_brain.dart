import 'dart:math';
import 'package:bmi_calculator/constants.dart';

class BMIBrain {
  final int weight;
  final int height;

  double _bmi = 0;

  BMIBrain({required this.weight, required this.height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getCalculation() {
    return _bmi.toStringAsFixed(1).toString();
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

  String getAdvices() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!!!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!!';
    }
  }
}
