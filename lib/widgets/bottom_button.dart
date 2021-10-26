import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.onPress});

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // padding: EdgeInsets.only(bottom: 20.0),
        color: Color(0xffFF0066),
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomButtonHeight,
        width: double.infinity,
      ),
    );
  }
}
