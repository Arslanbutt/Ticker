import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

class TimerPage extends StatefulWidget {
  final int workSeconds;
  final int sets;

  TimerPage({this.workSeconds, this.sets = 1});

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage>
    with SingleTickerProviderStateMixin {
  TimerController _timerController;

  Duration duration;
  int looper;

  @override
  void initState() {
    _timerController = TimerController(this);
    //This line make sure that build method is called before starting timer
    duration = new Duration(seconds: widget.workSeconds);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //_timerController.start();
      print("inside function call");
      for (int i = 0; i < widget.sets;) {
        print("Inside loop");
        if (i == 0) {
          await testTimer();
          i++;
        } else {
          await testTimerR();
          i++;
        }
      }
    });
    super.initState();
    //print("Seconds " + widget.workSeconds.toString());
  }

  Future<void> testTimer() async {
    _timerController.start();
    return Future.delayed(Duration(seconds: widget.workSeconds));
    ;
  }

  Future<void> testTimerR() async {
    _timerController.restart();
    return Future.delayed(Duration(seconds: widget.workSeconds));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    // flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: SimpleTimer(
                        duration: duration,
                        controller: _timerController,
                        timerStyle: TimerStyle.ring,
                        backgroundColor: Colors.grey,
                        progressIndicatorColor: Colors.green,
                        progressIndicatorDirection:
                            TimerProgressIndicatorDirection.clockwise,
                        progressTextCountDirection:
                            TimerProgressTextCountDirection.count_down,
                        progressTextStyle: TextStyle(color: Colors.white),
                        strokeWidth: 10,
                      ),
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
                            height: 60.0,
                            margin: EdgeInsets.all(15.0),
                            child: FlatButton(
                              child: Text("ReStart"),
                              color: Color(0XFFEB1555),
                              onPressed: () {
                                _timerController.restart();
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
          ],
        ),
      ),
    );
  }
}
