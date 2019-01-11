import 'package:flutter/material.dart';
import 'package:flutter_ui/ui/get_coaching/get_coaching.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Uis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetCoaching(),
    );
  }
}