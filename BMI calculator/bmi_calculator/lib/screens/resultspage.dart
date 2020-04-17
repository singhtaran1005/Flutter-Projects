import 'package:bmi_calculator/components/bottombuttton.dart';
import 'package:bmi_calculator/cosntants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiresult, @required this.interpretation, @required this.resultext});

  final String bmiresult;
  final String resultext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                  child: Text(
                'YOUR RESULTS',
                style: ktitleTextStyle,
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultext.toUpperCase(),style: resulttextstyle),
                  Text(
                    bmiresult,
                    style: KBMI,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: BMITEXT,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
