import 'package:flutter/material.dart';
import 'constants.dart';

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
