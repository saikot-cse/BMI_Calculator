import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.calculateBMI,
      @required this.getResult,
      @required this.getText});
  final String calculateBMI;
  final String getResult;
  final String getText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kReUsableColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculateBMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getText,
                    textAlign: TextAlign.center,
                    style: kDetailsTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE"),
        ],
      ),
    );
  }
}
