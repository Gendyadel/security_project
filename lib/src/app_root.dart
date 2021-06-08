import 'package:flutter/material.dart';
import 'package:security_project/src/constants.dart';
import 'package:security_project/views/main_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cypher',
      theme: ThemeData(
        primarySwatch: defaultColor,
      ),
      home: MainScreen(),
    );
  }
}
