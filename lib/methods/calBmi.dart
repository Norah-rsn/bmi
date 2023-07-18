import 'dart:math';

import 'package:flutter/material.dart';

class CalculateBMI {
  late int height;
  late int weight;

  CalculateBMI({required int h, required int w}) {
    height = h;
    weight = w;
  }

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  Color getColor() {
    if (_bmi! >= 25) {
      return Colors.red;
    } else if (_bmi! > 18.5) {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }
}
