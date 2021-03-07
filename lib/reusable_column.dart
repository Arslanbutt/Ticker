import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticker/reusable_text.dart';
import 'package:ticker/round_icon_button.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn(
      {this.titleText, this.time, this.onPressedAdd, this.onPressedMinus});

  final String titleText;
  final int time;
  final Function onPressedAdd;
  final Function onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
          title: titleText,
          fontSize: 16.0,
          marginTop: 10.0,
          fontWeight: FontWeight.w500,
        ),
        ReusableText(
          title: time.toString(),
          fontSize: 32.0,
          fontWeight: FontWeight.w900,
          marginTop: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: (FontAwesomeIcons.plus),
              onPressed: onPressedAdd,
            ),
            SizedBox(
              width: 20.0,
            ),
            RoundIconButton(
              icon: (FontAwesomeIcons.minus),
              onPressed: onPressedMinus,
            ),
          ],
        ),
      ],
    );
  }
}
