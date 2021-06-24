import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bMI;
  final String resultStatement;
  final String interpretation;
  ResultsPage(
      {@required this.bMI,
      @required this.resultStatement,
      @required this.interpretation});

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
              padding: EdgeInsets.only(top: 50),
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardchild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultStatement.toUpperCase(),
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xFF22E67B),
                    ),
                  ),
                  Text(
                    bMI,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.only(top: 10),
              color: Color(0xffEB1555),
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  'Re-calculate',
                  style: kLargeBottomButton,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
