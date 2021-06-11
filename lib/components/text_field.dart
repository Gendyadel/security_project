import 'package:flutter/material.dart';
import 'package:security_project/src/constants.dart';

class BorderTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Color color;
  final controller;
  Color insideTextColor;

     BorderTextField(
      {
        required this.hint,
        required this.icon,
        required this.color,
        required this.controller,
         this.insideTextColor=kDefaultColor
       });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: TextFormField(
          controller: controller,
          style: TextStyle(
              color: insideTextColor,
              fontSize: 16,fontWeight: FontWeight.w500),
          cursorColor: color,
          decoration: InputDecoration(
            focusedBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: color, width: 3),
            ),
            enabledBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: color, width: 2),
            ),
            labelText: hint,
            labelStyle: TextStyle(color: color,fontSize: 20),
            border: OutlineInputBorder(),
            suffixIcon: Icon(
              icon,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
