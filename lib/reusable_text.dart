import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String title;
  final double fontSize;
  final fontWeight;
  final double marginTop;
  ReusableText(
      {@required this.title, this.fontSize, this.fontWeight, this.marginTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop != null ? marginTop : 0.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize != null ? fontSize : 14,
            fontWeight: fontWeight != null ? fontWeight : FontWeight.w400),
      ),
    );
  }
}
