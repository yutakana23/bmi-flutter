import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi; //このクラスでしか使えない変数。

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return '肥満体型';
    }else if(_bmi > 18.5){
      return '普通体型';
    }else {
      return '痩せ型体型';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'あなたのBMIは大きいです。食事の量を減らしたり、食後は運動をしましょう！';
    }else if(_bmi > 18.5){
      return 'あなたのBMIは適正値です。この体型を維持しましょう！';
    }else {
      return 'あなたのBMIは小さいです。もう少し食べましょう！';
    }
  }

}
