import 'package:flutter/material.dart';
import 'package:driver/first.dart';
// ignore: unused_import
import 'package:driver/fourth.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
