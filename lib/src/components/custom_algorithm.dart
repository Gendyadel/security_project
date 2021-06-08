import 'package:flutter/material.dart';

class CustomAlgorithm extends StatelessWidget {
  final String algorithmName;
  final Widget textFields;
  final Function buttonPress;

  CustomAlgorithm(
      {required this.algorithmName,
      required this.textFields,
      required this.buttonPress});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(algorithmName),
      textFields,
      TextButton(onPressed: buttonPress(), child: Text('Encrypt')),
    ]);
  }
}
