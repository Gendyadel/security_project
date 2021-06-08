import 'package:flutter/material.dart';
import 'package:security_project/src/components/custom_algorithm.dart';
import 'package:security_project/src/components/default_button.dart';
import 'package:security_project/src/constants.dart';

class MainScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  var textController = TextEditingController();
  var keyController = TextEditingController();
  var mController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          'Cypher',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: defaultColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Encrypted text',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: textController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                        border: InputBorder.none,
                        labelText: 'Text',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 60,
                  child: TextFormField(
                    controller: keyController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Key',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60.0,
                ),
                Container(
                  height: 50,
                  width: 60,
                  child: TextFormField(
                    controller: mController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'M',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  CustomAlgorithm(
                    algorithmName: 'Gendy',
                    buttonPress: () {},
                    textFields: Row(
                      children: [Text('d7kawy'), Text('de7ten')],
                    ),
                  )
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
