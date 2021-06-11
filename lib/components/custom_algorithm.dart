import 'package:flutter/material.dart';
import 'package:security_project/src/constants.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              algorithmName.toUpperCase(),
              style: TextStyle(
                  color: kSecondColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: textFields),
            TextButton(
                onPressed: () {
                  buttonPress();
                },
                child: Text(
                  'Encrypt',
                  style: TextStyle(color: kSecondColor, fontSize: 20),
                )),
          ]),

          Divider(thickness: 3,),
        ],
      ),
    );
  }
}
