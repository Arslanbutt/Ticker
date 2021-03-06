import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:ticker/reusable_text.dart';

class Input extends StatefulWidget {
  Input({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ReusableText("Work Time"),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0XFF1D1E33)),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(Color(0XFF1D1E33)),
                  ),
                ],
              ),
            ),
            ReusableText("Rest"),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0XFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0XFF1D1E33)),
                  ),
                ],
              ),
            ),
            ReusableText("Sets"),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0XFF1D1E33)),
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
