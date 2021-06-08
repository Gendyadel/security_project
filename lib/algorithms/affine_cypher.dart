

import 'package:security_project/algorithms/utils.dart';

/// Affine cipher implementation.
class AffineCipher {
  late int key, m;


  /// [a] and [b] are required.
  ///
  /// [ArgumentError] if [a] is not prime with 26.
  AffineCipher(int a, int b) {
    if (a.gcd(26) != 1) {
      throw ArgumentError("$a is not prime with 26.");
    }
    this.key = a;
    this.m = b;
  }

  String _convert(String text, String m) {
    StringBuffer cipher = StringBuffer();

    for (var i = 0; i < text.length; i++) {
      String ch = text[i];

      if (isLetter(ch)) {
        String s;

        if (m == "encrypt") {
          s = alphabet[((this.key * alphabet.indexOf(ch.toUpperCase())) + this.m) % 26];
        } else {
          s = alphabet[(this.key.modInverse(26) * (alphabet.indexOf(ch.toUpperCase()) - this.m)) % 26];
        }

        cipher.write(isUpper(ch) ? s.toUpperCase() : s.toLowerCase());
      } else {
        cipher.write(ch);
      }
    }

    return cipher.toString();
  }

  /// Encrypt [text].
  String encrypt(String text) => _convert(text, "encrypt");

  /// Decrypt [text].
  String decrypt(String text) => _convert(text, "decrypt");
}
