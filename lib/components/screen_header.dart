import 'package:flutter/material.dart';
import 'package:security_project/components/text_field.dart';
import 'package:security_project/src/constants.dart';


class ScreenHeader extends StatelessWidget {

  final TextEditingController userInputController;


  ScreenHeader({required this.userInputController});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDefaultColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      height: 200,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 20,),

          Text(
            'Encrypted text',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
            color: Colors.white
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                BorederTextField(
                  hint: 'Plane Text',
                  icon:Icons.text_fields ,
                  color: Colors.white,

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
