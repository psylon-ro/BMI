import 'dart:math';

class BMIbrain {
  final double height;
  final double weight;
  double _result;
  BMIbrain({this.height, this.weight});

  String bMIcalculator() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String getResults() {
    if (_result >= 25) {
      return 'overweight';
    } else if (_result >= 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_result >= 25) {
      return 'you have a higher than normal body weight. Try to exercise more!';
    } else if (_result >= 18.5) {
      return 'you have a normal body weight. Good job!';
    } else {
      return 'you have a lower than normal body weight. You can eat more! ';
    }
  }
}
