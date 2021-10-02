import 'package:flutter/material.dart';
import 'package:myown/dashboard.dart';

void main() {
  runApp(MyOwn());
}

class MyOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}
