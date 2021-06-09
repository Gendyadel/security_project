import 'package:flutter/material.dart';



class BorederTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Color color;



     BorederTextField(
      {
        required this.hint,
        required this.icon,
        required this.color
       });
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: TextFormField(
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
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
