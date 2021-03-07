import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: FaIcon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
