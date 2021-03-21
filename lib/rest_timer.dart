import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

class RestTimerPage extends StatefulWidget {
  final Duration restDuration;

  RestTimerPage({this.restDuration});

  @override
  _RestTimerPageState createState() => _RestTimerPageState();
}

class _RestTimerPageState extends State<RestTimerPage>
    with SingleTickerProviderStateMixin {
  TimerController _timerController;

  Duration duration;

  @override
  void initState() {
    _timerController = TimerController(this);
    duration = widget.restDuration;
    //This line make sure that build method is called before starting timer
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //_timerController.start();
      //print("inside function call");
      //print("Inside loop");
      await testTimer();
      Navigator.pop(context);
    });
    super.initState();
    //print("Seconds " + widget.workSeconds.toString());
  }

  Future<void> testTimer() async {
    _timerController.start();
    return Future.delayed(widget.restDuration);
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
                        progressIndicatorColor: Colors.red,
                        progressIndicatorDirection:
                            TimerProgressIndicatorDirection.clockwise,
                        progressTextCountDirection:
                            TimerProgressTextCountDirection.count_down,
                        progressTextStyle: TextStyle(color: Colors.white),
                        strokeWidth: 10,
                      ),
                    ),
                  ),
//                  Expanded(
//                    child: Row(
//                      children: [
//                        Expanded(
//                          child: Container(
//                            decoration: BoxDecoration(
//                              color: Color(0XFF1D1E33),
//                              borderRadius: BorderRadius.circular(10.0),
//                            ),
//                            height: 60.0,
//                            margin: EdgeInsets.all(15.0),
//                            child: FlatButton(
//                              child: Text("ReStart"),
//                              color: Color(0XFFEB1555),
//                              onPressed: () {
//                                _timerController.restart();
//                              },
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
