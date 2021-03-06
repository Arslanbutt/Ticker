import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String title;
  ReusableText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
