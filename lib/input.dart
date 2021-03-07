import 'package:flutter/material.dart';
import 'package:ticker/timer_page.dart';
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
  int sets = 1;

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: Color(0XFF1D1E33),
                      cardChild: Column(
                        children: [
                          ReusableText(
                            title: sets.toString(),
                            fontSize: 24.0,
                            marginTop: 10.0,
                            fontWeight: FontWeight.w900,
                          ),
                          Slider(
                            value: sets.toDouble(),
                            min: 1,
                            max: 20,
                            onChanged: (newValue) {
                              setState(() {
                                sets = newValue.toInt();
                              });
                            },
                            activeColor: Color(0XFFEB1555),
                            inactiveColor: Color(0XFF8D8E98),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: EdgeInsets.all(15.0),
                      child: FlatButton(
                        color: Color(0XFFEB1555),
                        child: Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return TimerPage();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
