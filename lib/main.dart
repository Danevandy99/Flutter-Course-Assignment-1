import 'package:flutter/material.dart';
import 'package:flutter_course/text-control.dart';
import 'package:flutter_course/text.dart';
// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = 'Hello!';

  void _changeText() {
    setState(() {
      text = 'Goodbye!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Assignment App'),
        ),
        body: Center(
          child: Column(
            children: [
              CustomText(text),
              TextControl(_changeText)
            ],
          ),
        ),
      ),
    );
  }
}
