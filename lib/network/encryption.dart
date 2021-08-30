/*
import 'dart:convert';

import 'package:crypto/crypto.dart';

class Encryption {
  static final instance = Encryption._();

  Encryption._();

  EncryptData encryption(String plainText) {
    try {
      final key = Key.fromUtf8(kMobileEncryptionKey);
      final iv = IV.fromUtf8(kMobileEncryptionIV);

      var encrypter = Encrypter(AES(key, mode: AESMode.cbc)); //AES-cbc-PKCS7
      var hMacSha256 = new Hmac(sha256, utf8.encode(kMobileEncryptionKey)); // HMAC-SHA256

      var encryptedValue = encrypter.encrypt(plainText, iv: iv).base64.replaceAll("\n", "");
      var mac = hMacSha256.convert(utf8.encode(iv.base64 + encryptedValue));

      var encData = EncryptData(mac: mac.toString(), value: encryptedValue);
      return encData;
    } catch (e) {
      print(e);
    }
    return EncryptData(mac: "sdf", value: "FSDS");
  }

  String decryption(EncryptData cipher, {bool doCheckMac = true}) {
    final key = Key.fromUtf8(kServerEncryptionKey);
    final iv = IV.fromUtf8(kServerEncryptionIV);

    var encrypter = Encrypter(AES(key, mode: AESMode.cbc)); //AES-cbc-PKCS7
    var hMacSha256 = new Hmac(sha256, utf8.encode(kServerEncryptionKey)); // HMAC-SHA256

    var mac = hMacSha256.convert(utf8.encode(iv.base64 + cipher.value));
    var decrypted = "";

    if (doCheckMac) {
      if (mac.toString() == cipher.mac) {
        decrypted = encrypter.decrypt64(cipher.value, iv: iv);
      } else
        throw Exception("Use secure network");
    } else {
      decrypted = encrypter.decrypt64(cipher.value, iv: iv);
    }
    return decrypted;
  }

  String decryptionMobileSide(EncryptData cipher, {bool doCheckMac = true}) {
    final key = Key.fromUtf8(kMobileEncryptionKey);
    final iv = IV.fromUtf8(kMobileEncryptionIV);

    var encrypter = Encrypter(AES(key, mode: AESMode.cbc)); //AES-cbc-PKCS7
    var hMacSha256 = new Hmac(sha256, utf8.encode(kMobileEncryptionKey)); // HMAC-SHA256

    var mac = hMacSha256.convert(utf8.encode(iv.base64 + cipher.value));
    var decrypted = "";

    if (doCheckMac) {
      if (mac.toString() == cipher.mac) {
        decrypted = encrypter.decrypt64(cipher.value, iv: iv);
      } else
        throw Exception("Use secure network");
    } else {
      decrypted = encrypter.decrypt64(cipher.value, iv: iv);
    }
    return decrypted;
  }
}
*/
