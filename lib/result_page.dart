import 'package:flutter/material.dart';
import './constants.dart';
import './reusable.dart';
import './bottombutton.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String result;
  final String simpleResult;

  ResultPage(
      {required this.bmiResult,
      required this.result,
      required this.simpleResult});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleText,
            ),
          )),
          Expanded(
            flex: 5,
            child: RepeatedCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    result,
                    style: kBmiResultText,
                  ),
                  Text(
                    simpleResult,
                    textAlign: TextAlign.center,
                    style: kBodyResultText,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RECALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ));
  }
}
