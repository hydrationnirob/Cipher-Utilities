import 'dart:convert';
import 'dart:math';

import 'package:encrypt/encrypt.dart';

abstract class EncryptForge {
    // Encrypt and Decrypt Password
  static String encryptPassword(String password) { // Encrypt Password
    final key = Key.fromUtf8('my32lengthsupersecretnooneknows1'); // Key
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes).substring(0, 32));
    final fernet = Fernet(b64key); // Fernet
    final encrypter = Encrypter(fernet); // Encrypter

    final encrypted = encrypter.encrypt(password); // Encrypt Password
    return encrypted.base64; // Return Encrypted Password
  }
  // Decrypt Password string encryptedPassword to string password
  static String decryptPassword(String encryptedPassword) {  // Decrypt Password
    final key = Key.fromUtf8('my32lengthsupersecretnooneknows1'); // Key
    final b64key = Key.fromUtf8(base64Url.encode(key.bytes).substring(0, 32)); // Base64 Key
    final fernet = Fernet(b64key);  // Fernet
    final encrypter = Encrypter(fernet); // Encrypter

    final encrypted = Encrypted.fromBase64(encryptedPassword); // Encrypted Password
    final decrypted = encrypter.decrypt(encrypted); // Decrypt Password
    return decrypted; // Return Decrypted Password
  }

  static bool isStrongPassword(String password) {
    // Implement password strength check logic here
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]')) &&
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }

  static String generateRandomKey() {
    final randomKey = IV.fromSecureRandom(16).base64;
    return randomKey;
  }

  // Generate Random Password with length 12 characters long
  static String generateRandomPassword({int length = 12}) { // Generate Random Password
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()-_+='; // Characters
    final random = Random.secure(); // Random
    return List.generate(length, (index) => chars[random.nextInt(chars.length)]) // Generate Password
        .join(); // Join Password
  }








}


// Path: lib/src/Utilis/random.dart