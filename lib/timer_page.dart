import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer Page"),
      ),
      body: Center(
        child: Text("2nd Page"),
      ),
    );
  }
}