import 'package:bmi_calculator/Reusable.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Expanded(
              child: Container(
                child: Text(
                  'Your BMI Result',
                  style: secondScreenTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: inactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OverWeight',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 35.0),
                  ),
                  Text(
                    '24.01',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 90.0),
                  ),
                  Text(
                    'asfsagsagsagsagsagsafasfasfasgasgasgt',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 25.0),
                  ),
                  BottomButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    buttonTitle: 'Recalculate BMI',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
