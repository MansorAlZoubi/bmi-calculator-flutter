import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'omer.dart';
class NextPage extends StatelessWidget {
NextPage({@required this.QqBmi,@required this.io,@required this.Result});
  final String QqBmi;
final String Result;
final String io;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result',
                style: KTitleTexst,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(color: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(Result.toUpperCase(),style: ResultTextpage,

                ),
                Text(QqBmi,
                     style: MansorPage,
                  
                ),
                Text(io,
                  style: KnumberTextStyal,
                  textAlign:TextAlign.center,
                ),

              ],
            ),
            ),
          ),
          Bouttenbb(Bouttenaa: 'RE-CALAEULT',onTop:(){
          Navigator.pop(context);
          }
          )
        ],
      )
    );
  }
}
