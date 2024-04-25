
import 'dart:ui';

import 'package:Cipher_Utilities/CipherUtilities.dart';
import 'package:flutter/src/widgets/image.dart';

import 'Utilis/Encrypt.dart';
import 'Utilis/random.dart';

class Cipher  {

  static String encryptPassword(String password) {
    return EncryptForge.encryptPassword(password);
  }

  static String decryptPassword(String encryptedPassword) {
    return EncryptForge.decryptPassword(encryptedPassword);
  }

  static bool isStrongPassword(String password) {
    return EncryptForge.isStrongPassword(password);
  }

  static String generateRandomKey() {
    return EncryptForge.generateRandomKey();
  }

  static String generateRandomPassword({int length = 12}) {
    return EncryptForge.generateRandomPassword(length: length);
  }

  static String randomText({int length = 10}) {
    return RandomForge.randomText(length: length);
  }

  static String randomEmail({int length = 8}) {
    return RandomForge.randomEmail(length: length);
  }

  static String randomName() {
    return RandomForge.randomName();
  }

  static String randomAddress() {
    return RandomForge.randomAddress();
  }


  static String randomPhone({int length = 10}) {
    return RandomForge.randomPhone(length: length);
  }

  static String randomDate() {
    return RandomForge.randomDate();
  }

  static String randomTime() {
    return RandomForge.randomTime();
  }

  static String randomDateTime() {
    return RandomForge.randomDateTime();
  }

  static String randomParagraph({int minWordsPerLine = 10, int maxWordsPerLine = 20, int minSentences = 3, int maxSentences = 5}) {
    return RandomForge.randomParagraph(
      minWordsPerLine: minWordsPerLine,
      maxWordsPerLine: maxWordsPerLine,
      minSentences: minSentences,
      maxSentences: maxSentences,
    );
  }

  static String randomPassword({int length = 12}) {
    return EncryptForge.generateRandomPassword(length: length);
  }

  static String randomKey() {
    return EncryptForge.generateRandomKey();
  }

  static String randomIpv4({maxNumLength = 3, minNumLength = 1}) {
    return RandomForge.randomIpv4(
      maxNumLength: maxNumLength,
      minNumLength: minNumLength,
    );
  }

  static String randomIpv6() {
    return RandomForge.randomIpv6();
  }


  static String randomUrl() {
    return RandomForge.randomUrl();
  }

  static String randomUuid() {
    return RandomForge.randomUuid();
  }

  static bool randomBool() {
    return RandomForge.randomBool();
  }

  static Color randomRgbColor() {
    return RandomForge.randomRgbColor();
  }



  static String randomFileName({int length = 10}) {
    return RandomForge.randomFileName(length:length );
  }

  static String randomFilePath({int segments = 4}) {
    return RandomForge.randomFilePath(segments: segments);
  }

  static String randomMacAddress() {
    return RandomForge.randomMacAddress();
  }

  static String randomUserAgent() {
    return RandomForge.randomUserAgent();
  }


  // static Image randomAvatar

   static Image randomAvatarImage({String name = 'A', String size = '100'}) {
    return RandomForge.randomAvatarImage(name: name, size: size);
   }

    static Image randomFaceAvatar({required ImageType imageType , double size = 100.0}) {
    return RandomForge.randomFaceAvatar(imageType: imageType, size: size);
    }

}