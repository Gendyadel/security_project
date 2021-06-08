import 'package:security_project/algorithms/affine_cypher.dart';
import 'package:security_project/algorithms/ceaser_cipher.dart';
import 'package:security_project/algorithms/rot5cipher.dart';
import 'package:security_project/algorithms/vignere.dart';


void main() {

  var affineCypher=AffineCipher(3, 5);
  String encrypt = affineCypher.encrypt('Hello World!');
  String decrypt = affineCypher.decrypt(encrypt);
   print(encrypt); // Armmv Tvemo!
   print(decrypt); // Hello World!

  var eslamVigner=FallVigenereCipher('51327');
  String eslamEncrypt = eslamVigner.encrypt('vigenere cipher');
  String eslamDecrypt = eslamVigner.decrypt(eslamEncrypt);
  print(eslamEncrypt); // Lwwla Agclp!
  print(eslamDecrypt); // vigenere cipher


  var gendyRot=Rot5();
  String gendyEncrypt = gendyRot.encrypt('1 23 456 7890');
  String gendyDecrypt = gendyRot.decrypt(gendyEncrypt);
  print(gendyEncrypt); // 6 78 901 2345
  print(gendyDecrypt); // 1 23 456 7890


  var dohaCihper=CaesarCipher(7);
  String dohaEncrypt = dohaCihper.encrypt('eslam ludo');
  String dohaDycrypt = dohaCihper.decrypt(dohaEncrypt);
  print(dohaEncrypt); // 6 78 901 2345
  print(dohaDycrypt); // 1 23 456 7890





}
