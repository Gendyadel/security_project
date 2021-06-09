import 'package:flutter/material.dart';
import 'package:security_project/src/constants.dart';
import 'package:security_project/views/main_screen.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cypher',
      home: MainScreen(),
    );
  }
}
