import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 25.0,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

class CardGender extends StatelessWidget {
  CardGender({
    @required this.genderIcon,
    @required this.genderText,
  });
  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
