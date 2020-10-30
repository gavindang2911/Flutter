import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable.dart';
import 'Icon_content.dart';
import 'constants.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  double _currentSliderValue = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: (selectedGender == Gender.MALE)
                        ? activeColor
                        : inactiveColor,
                    cardChild: CardGender(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: "Male",
                    ),
                    onPress: () {
                      selectedGender = Gender.MALE;
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: (selectedGender == Gender.FEMALE)
                        ? activeColor
                        : inactiveColor,
                    cardChild: CardGender(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: "Female",
                    ),
                    onPress: () {
                      selectedGender = Gender.FEMALE;
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: inactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.pink,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: inactiveColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: colorBottom,
            height: 80.0,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
