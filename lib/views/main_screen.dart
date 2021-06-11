import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:security_project/components/custom_algorithm.dart';
import 'package:security_project/components/screen_header.dart';
import 'package:security_project/components/text_field.dart';
import 'package:security_project/providers/algorithm_provider.dart';
import 'package:security_project/src/constants.dart';

class MainScreen extends StatelessWidget {
  var plainTextController = TextEditingController();
  var affineCipherkeyController = TextEditingController();
  var affineCipherMController = TextEditingController();
  var fallVigenereCipherkeyController = TextEditingController();
  var caesarCipherkeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AlgorithmsProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ScreenHeader(
            userInputController: plainTextController,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  CustomAlgorithm(
                    algorithmName: 'Affine Cipher',
                    buttonPress: () {
                      provider.applyAffineCipherEncrypt(
                          plainTextController.text,
                          int.parse(affineCipherkeyController.text),
                          int.parse(affineCipherMController.text));

                      provider.setAffineData(
                          int.parse(affineCipherkeyController.text),
                          int.parse(affineCipherMController.text));
                    },
                    textFields: Row(
                      children: [
                        BorderTextField(
                            controller: affineCipherkeyController,
                            hint: 'key',
                            icon: Icons.vpn_key,
                            color: kDefaultColor),
                        BorderTextField(
                            controller: affineCipherMController,
                            hint: 'M',
                            icon: Icons.vpn_key,
                            color: kDefaultColor),
                      ],
                    ),
                  ),
                  CustomAlgorithm(
                    algorithmName: 'Fall Vigenere Cipher',
                    buttonPress: () {
                      provider.applyFallVigenereCipherEncrypt(
                          provider.encryptedText == ''
                              ? plainTextController.text
                              : provider.encryptedText,
                          fallVigenereCipherkeyController.text);

                      provider
                          .setVignerData(fallVigenereCipherkeyController.text);
                    },
                    textFields: Row(
                      children: [
                        BorderTextField(
                            controller: fallVigenereCipherkeyController,
                            hint: 'key',
                            icon: Icons.vpn_key,
                            color: kDefaultColor),
                      ],
                    ),
                  ),
                  CustomAlgorithm(
                      algorithmName: 'rot 5',
                      buttonPress: () {
                        provider.applyRot5Encrypt(plainTextController.text);
                      },
                      textFields: Text(
                        'N O  K E Y S  r e q u i r e d '.toUpperCase(),
                        style: TextStyle(fontSize: 20),
                      )),
                  CustomAlgorithm(
                    algorithmName: 'Caesar Cipher',
                    buttonPress: () {
                      provider.applyCaesarCipherEncrypt(
                          provider.encryptedText == ''
                              ? plainTextController.text
                              : provider.encryptedText,
                          int.parse(caesarCipherkeyController.text));
                      provider.setCaeserData(int.parse(caesarCipherkeyController.text));
                    },
                    textFields: Row(
                      children: [
                        BorderTextField(
                            controller: caesarCipherkeyController,
                            hint: 'key',
                            icon: Icons.vpn_key,
                            color: kDefaultColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10.0),
                ),
                border: Border.all(color: kSecondColor, width: 5)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                        onPressed: () {
                          provider.algorithmDecrypt();
                        },
                        child: Text(
                          '<<<<Decrypt>>>>',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 30),
                        )),
                  ),
                  Text(
                    provider.encryptedText,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
