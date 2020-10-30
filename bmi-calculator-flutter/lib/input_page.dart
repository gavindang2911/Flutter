import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable.dart';
import 'Icon_content.dart';

const Color color = Color(0xFF1D1E33);
const Color colorBottom = Colors.pink;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: color,
                    cardChild: CardGender(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: color,
                    cardChild: CardGender(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: color,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: color,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: color,
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
