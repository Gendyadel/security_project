import 'package:flutter/material.dart';
import 'package:security_project/components/custom_algorithm.dart';
import 'package:security_project/components/default_button.dart';
import 'package:security_project/components/screen_header.dart';
import 'package:security_project/components/text_field.dart';
import 'package:security_project/src/constants.dart';

class MainScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  var textController = TextEditingController();
  var keyController = TextEditingController();
  var mController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


          ScreenHeader(userInputController: textController,),

          SizedBox(
            height: 20,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  CustomAlgorithm(
                    algorithmName: 'Algorithm1',
                    buttonPress: () {
                      print('اه يا أليسون اه ');
                    },
                    textFields: Row(
                      children: [
                        BorederTextField(
                            hint: 'key1',
                            icon: Icons.vpn_key,
                            color: kDefaultColor
                        ),
                        BorederTextField(
                            hint: 'M',
                            icon: Icons.vpn_key,
                            color: kDefaultColor
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          defaultButton(
              onPressed: () {
                print('here');
              },
              text: 'decrypt'),
        ],
      ),
    );
    ;
  }
}
