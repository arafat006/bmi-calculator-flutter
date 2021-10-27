import 'dart:ffi';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiCalculation;
  final String bmiAdvice;

  ResultPage(
      {required this.bmiResult,
      required this.bmiCalculation,
      required this.bmiAdvice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Your Result',
                    style: kSuperTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      bmiResult.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff00FF6C),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiCalculation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiAdvice,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                onPress: () {
                  nullptr;
                },
              ),
            ),
            BottomButton(
              title: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
