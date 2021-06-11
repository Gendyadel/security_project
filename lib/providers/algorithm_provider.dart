import 'package:flutter/material.dart';
import 'package:security_project/algorithms/affine_cypher.dart';
import 'package:security_project/algorithms/ceaser_cipher.dart';
import 'package:security_project/algorithms/rot5cipher.dart';
import 'package:security_project/algorithms/simple_vigner_cipher.dart';

class AlgorithmsProvider extends ChangeNotifier {
  late String encryptedText = '';

  late int affineKey, affineM;

  setAffineData(int key, int m) {
    affineKey = key;
    affineM = m;
    notifyListeners();
  }

  late String vignerKey;

  setVignerData(String key) {
    vignerKey = key;
    notifyListeners();
  }

  late int caeserKey;

  setCaeserData(int key)
  {
    caeserKey=key;
    notifyListeners();
  }

  List<String> algorithmsQueue = [];

  changePrintedText(String newText) {
    encryptedText = newText;
    notifyListeners();
  }

  applyAffineCipherEncrypt(String text, int key, int m) {
    AffineCipher affineCypher = AffineCipher(key, m);
    String encrypt = affineCypher.encrypt(text);
    changePrintedText(encrypt);
    algorithmsQueue.add('de7k1');
    notifyListeners();
  }

  applyFallVigenereCipherEncrypt(String text, String key) {
    FallVigenereCipher fallVigenereCipher = FallVigenereCipher(key);
    String encrypt = fallVigenereCipher.encrypt(text);
    print(encrypt);
    changePrintedText(encrypt);
    algorithmsQueue.add('de7k2');
    notifyListeners();
  }

  applyCaesarCipherEncrypt(String text, int key) {
    CaesarCipher cihper = CaesarCipher(7);
    String encrypt = cihper.encrypt(text);
    print(encrypt);
    changePrintedText(encrypt);
    algorithmsQueue.add('de7k3');
    notifyListeners();
  }

  applyRot5Encrypt(String text) {
    Rot5 rot5 = Rot5();
    String encrypt = rot5.encrypt(text);
    print(encrypt);
    changePrintedText(encrypt);
    algorithmsQueue.add('de7k4');
    notifyListeners();
  }

  algorithmDecrypt() {
    print(algorithmsQueue);
    List<String> reversedQueue = List.from(algorithmsQueue.reversed);
    print(algorithmsQueue);
    print(reversedQueue);

    for (int i = 0; i < reversedQueue.length; i++) {
      if (reversedQueue[i] == 'de7k1') {
        AffineCipher affineCypher = AffineCipher(affineKey, affineM);
        String decrypt = affineCypher.decrypt(encryptedText);
        changePrintedText(decrypt);
        notifyListeners();
      } else if (reversedQueue[i] == 'de7k2') {
        FallVigenereCipher fallVigenereCipher = FallVigenereCipher(vignerKey);
        String decrypt = fallVigenereCipher.decrypt(encryptedText);
        changePrintedText(decrypt);
        notifyListeners();
      }
      else if (reversedQueue[i] == 'de7k3') {
        var caesar = CaesarCipher(caeserKey);
        String dycrypt = caesar.decrypt(encryptedText);
        changePrintedText(dycrypt);
        notifyListeners();
      }
    }
  }
}
