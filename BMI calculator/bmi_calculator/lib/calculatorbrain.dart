import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculatebmi() {
    double _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have a normal body weight.Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.Good job!';
    } else {
      return 'You hvae a lower than normal body weight.You can eat a bit more.';
    }
  }
}
