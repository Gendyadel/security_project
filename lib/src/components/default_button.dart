import 'package:flutter/material.dart';
import 'package:security_project/src/constants.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = defaultColor,
  required Function onPressed,
  required String text,
}) =>
    Container(
      width: width,
      height: 60,
      child: MaterialButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
      ),
    );
