import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:ticker/reusable_text.dart';
import 'package:ticker/reusable_column.dart';

class Input extends StatefulWidget {
  Input({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  int minutes = 0;
  int seconds = 0;
  int restMinutes = 0;
  int restSeconds = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ReusableText(
              title: "Work Time",
              fontSize: 20.0,
              marginTop: 15.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: Color(0XFF1D1E33),
                      cardChild: ReusableColumn(
                        titleText: "Minutes",
                        time: minutes,
                        onPressedMinus: () {
                          setState(() {
                            minutes == 0 ? minutes = 59 : minutes--;
                          });
                        },
                        onPressedAdd: () {
                          setState(() {
                            minutes == 59 ? minutes = 0 : minutes++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0XFF1D1E33),
                      cardChild: ReusableColumn(
                        titleText: "Seconds",
                        time: seconds,
                        onPressedMinus: () {
                          setState(() {
                            seconds == 0 ? seconds = 59 : seconds--;
                          });
                        },
                        onPressedAdd: () {
                          setState(() {
                            seconds == 59 ? seconds = 0 : seconds++;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ReusableText(
              title: "Rest",
              fontSize: 20.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: Color(0XFF1D1E33),
                      cardChild: ReusableColumn(
                        titleText: "Minutes",
                        time: restMinutes,
                        onPressedMinus: () {
                          setState(() {
                            restMinutes == 0 ? restMinutes = 59 : restMinutes--;
                          });
                        },
                        onPressedAdd: () {
                          setState(() {
                            restMinutes == 59 ? restMinutes = 0 : restMinutes++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0XFF1D1E33),
                      cardChild: ReusableColumn(
                        titleText: "Seconds",
                        time: restSeconds,
                        onPressedMinus: () {
                          setState(() {
                            restSeconds == 0 ? restSeconds = 59 : restSeconds--;
                          });
                        },
                        onPressedAdd: () {
                          setState(() {
                            restSeconds == 59 ? restSeconds = 0 : restSeconds++;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ReusableText(
              title: "Sets",
              fontSize: 20.0,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: Color(0XFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.all(15.0),
                      child: FlatButton(
                        color: Color(0XFF1D1E33),
                        child: Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        /*child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Text(
                "Work",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: NumberPicker.integer(
                      decoration: new BoxDecoration(
                        border: new Border(
                          top: new BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue,
                          ),
                          bottom: new BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      initialValue: _currentValue,
                      minValue: 0,
                      maxValue: 59,
                      zeroPad: true,
                      infiniteLoop: true,
                      highlightSelectedValue: true,
                      onChanged: (newValue) =>
                          setState(() => _currentValue = newValue - 1),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 50,
                    child: NumberPicker.integer(
                      decoration: new BoxDecoration(
                        border: new Border(
                          top: new BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue,
                          ),
                          bottom: new BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      initialValue: _currentValue,
                      minValue: 0,
                      maxValue: 59,
                      zeroPad: true,
                      infiniteLoop: true,
                      highlightSelectedValue: true,
                      onChanged: (newValue) =>
                          setState(() => _currentValue = newValue - 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),*/
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
