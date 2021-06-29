import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.result, required this.interpretation});

  final String bmiResult;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI計算機',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('あなたのBMIは・・・',
              style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(result,
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.pop(context);
            },
              buttonTitle: '数値入力画面に戻る',
          ),
        ],
      ),
    );
  }
}
