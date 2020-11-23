import 'dart:math';

class Ee {
  Ee({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String QqBmi(){
     _bmi=weight/pow(height/100,1);//weight\height
  return  _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25)
      {
      return 'Over weight';
  }
    else if(_bmi<=18.5)
      {
        return 'Normal';
      }
    else 'Underweight';
  }
  String io(){
    if(_bmi>=10)
    {
      return 'Fuck you';
    }
    else if(_bmi<=5)
    {
      return 'not good';
    }
    else 'love you';
  }
}