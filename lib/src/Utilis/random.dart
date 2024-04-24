import 'dart:io';
import 'dart:math';
import 'dart:core';

import 'package:chiper_texter/src/enum.dart';
import 'package:flutter/material.dart';

abstract class RandomForge {
  static final _random = Random();

  // Generate a random text with the specified number of words
  static String randomText({int length = 10}) {
    const List<String> words = [
      'Lorem',
      'ipsum',
      'dolor',
      'sit',
      'amet',
      'consectetur',
      'adipiscing',
      'elit',
      'sed',
      'do',
      'eiusmod',
      'tempor',
      'incididunt',
      'ut',
      'labore',
      'et',
      'dolore',
      'magna',
      'aliqua',
      'Ut',
      'enim',
      'ad',
      'minim',
      'veniam',
      'quis',
      'nostrud',
      'exercitation',
      'ullamco',
      'laboris',
      'nisi',
      'ut',
      'aliquip',
      'ex',
      'ea',
      'commodo',
      'consequat',
      'Duis',
      'aute',
      'irure',
      'dolor',
      'in',
      'reprehenderit',
      'in',
      'voluptate',
      'velit',
      'esse',
      'cillum',
      'dolore',
      'eu',
      'fugiat',
      'nulla',
      'pariatur',
      'Excepteur',
      'sint',
      'occaecat',
      'cupidatat',
      'non',
      'proident',
      'sunt',
      'in',
      'culpa',
      'qui',
      'officia',
      'deserunt',
      'mollit',
      'anim',
      'id',
      'est',
      'laborum'
    ]; // Add more words as needed

    String text = ''; // Initialize an empty string

    for (int i = 0; i < length; i++) {
      // Add a random word to the text
      text += words[_random.nextInt(words.length)];

      // Add space between words
      text += ' ';
    }

    // Capitalize the first letter of the sentence
    text = text.trim();
    text = text.substring(0, 1).toUpperCase() + text.substring(1);

    // Add a period at the end
    text += '.';

    return text;
  }

  static String randomEmail({int length = 10}) {
    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    String email = '';

    // Generate random email username
    for (int i = 0; i < length; i++) {
      email += chars[_random.nextInt(chars.length)];
    }

    // Append domain
    email += '@gmail.com'; // You can replace 'example.com' with a real domain

    return email;
  }

  static String randomName() {
    const List<String> firstNames = [
      'John', 'Jane', 'Michael', 'Emily', 'David', 'Sarah', 'James', 'Jennifer',
      'Robert', 'Jessica'
      // Add more first names as needed
    ];

    const List<String> lastNames = [
      'Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller',
      'Davis', 'Rodriguez', 'Martinez'
      // Add more last names as needed
    ];

    // Randomly select a first name and a last name
    String firstName = firstNames[_random.nextInt(firstNames.length)];
    String lastName = lastNames[_random.nextInt(lastNames.length)];

    // Capitalize first letter of first name and last name
    firstName =
        firstName.substring(0, 1).toUpperCase() + firstName.substring(1);
    lastName = lastName.substring(0, 1).toUpperCase() + lastName.substring(1);

    // Combine first name and last name to form the full name
    String fullName = '$firstName $lastName';

    return fullName;
  }

  static String randomAddress() {
    const List<String> streetNames = [
      'Main St', 'Park Ave', 'Maple St', 'Oak St', 'Cedar St'
      // Add more street names as needed
    ];

    const List<String> cities = [
      'New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix'
      // Add more cities as needed
    ];

    const List<String> states = [
      'NY', 'CA', 'IL', 'TX', 'AZ'
      // Add more states as needed
    ];

    String address = '';

    // Randomly select elements of the address
    String streetNumber = '${_random.nextInt(9999) + 1}';
    String streetName = streetNames[_random.nextInt(streetNames.length)];
    String city = cities[_random.nextInt(cities.length)];
    String state = states[_random.nextInt(states.length)];
    String postalCode =
        '${_random.nextInt(90000) + 10000}'; // Generate a 5-digit postal code

    // Build the address string
    address = '$streetNumber $streetName, $city, $state $postalCode';

    return address;
  }

  static String randomPhone({int prefix = 0, required int length}) {
    String phone = '';

    // Ensure the length is valid
    if (length < 7 || length > 15) {
      throw ArgumentError(
          'Phone number length must be between 7 and 15 digits');
    }

    // Generate the phone number
    for (int i = 0; i < length; i++) {
      if (i == 0) {
        // Ensure the first digit is not 0
        phone += '${_random.nextInt(9) + 1}';
      } else {
        phone += '${_random.nextInt(10)}';
      }

      // Insert dashes for better readability
      if (i == 2 || i == 5 || i == 8) {
        phone += '-';
      }
    }

    // Add the prefix if provided
    if (prefix != 0) {
      phone = '+$prefix$phone';
    }

    return phone;
  }

  static String randomDate() {
    // Define the range of dates (adjust as needed)
    final DateTime startDate = DateTime(1970, 1, 1);
    final DateTime endDate = DateTime.now();

    // Generate a random number of days since epoch within the range
    final int randomDays =
        _random.nextInt(endDate.difference(startDate).inDays) + 1;

    // Add the random number of days to the start date
    final DateTime randomDateTime = startDate.add(Duration(days: randomDays));

    // Format the date
    final String formattedDate =
        '${_formatNumber(randomDateTime.year)}-${_formatNumber(randomDateTime.month)}-${_formatNumber(randomDateTime.day)}';

    return formattedDate;
  }

// Helper function to format numbers with leading zeros if necessary
  static String _formatNumber(int number) {
    return number.toString().padLeft(2, '0');
  }

  static String randomTime() {
    // Generate random hours, minutes, and seconds
    final int hour = _random.nextInt(24); // 0 to 23
    final int minute = _random.nextInt(60); // 0 to 59
    final int second = _random.nextInt(60); // 0 to 59

    // Format the time
    final String formattedTime =
        '${_formatNumber(hour)}:${_formatNumber(minute)}:${_formatNumber(second)}';

    return formattedTime;
  }

  static String randomDateTime() {
    // Generate random date and time separately
    final String date = randomDate();
    final String time = randomTime();

    // Combine date and time
    final String dateTime = '$date $time';

    return dateTime;
  }

  static String randomParagraph({
    int? minWordsPerLine,
    int? maxWordsPerLine,
    int? minSentences,
    int? maxSentences,
  }) {
    const List<String> words = [
      'Lorem',
      'ipsum',
      'dolor',
      'sit',
      'amet',
      'consectetur',
      'adipiscing',
      'elit',
      'sed',
      'do',
      'eiusmod',
      'tempor',
      'incididunt',
      'ut',
      'labore',
      'et',
      'dolore',
      'magna',
      'aliqua',
      'Ut',
      'enim',
      'ad',
      'minim',
      'veniam',
      'quis',
      'nostrud',
      'exercitation',
      'ullamco',
      'laboris',
      'nisi',
      'ut',
      'aliquip',
      'ex',
      'ea',
      'commodo',
      'consequat',
      'Duis',
      'aute',
      'irure',
      'dolor',
      'in',
      'reprehenderit',
      'in',
      'voluptate',
      'velit',
      'esse',
      'cillum',
      'dolore',
      'eu',
      'fugiat',
      'nulla',
      'pariatur',
      'Excepteur',
      'sint',
      'occaecat',
      'cupidatat',
      'non',
      'proident',
      'sunt',
      'in',
      'culpa',
      'qui',
      'officia',
      'deserunt',
      'mollit',
      'anim',
      'id',
      'est',
      'laborum'
    ];

    Random random = Random();
    String paragraph = '';

    // Define default values for optional parameters
    minWordsPerLine ??= 5;
    maxWordsPerLine ??= 15;
    minSentences ??= 3;
    maxSentences ??= 8;

    int sentences =
        random.nextInt(maxSentences - minSentences + 1) + minSentences;

    for (int i = 0; i < sentences; i++) {
      int wordsInLine = random.nextInt(maxWordsPerLine - minWordsPerLine + 1) +
          minWordsPerLine;

      for (int j = 0; j < wordsInLine; j++) {
        paragraph += '${words[random.nextInt(words.length)]} ';
      }

      paragraph += '. '; // End each sentence with a period and space
    }

    return paragraph.trim(); // Remove trailing whitespace
  }

  static String randomIpv4({int minNumLength = 1, int maxNumLength = 3}) {
    Random random = Random();

    // Generate four random numbers for the IPv4 address
    String num1 = _generateRandomNumber(minNumLength, maxNumLength, random);
    String num2 = _generateRandomNumber(minNumLength, maxNumLength, random);
    String num3 = _generateRandomNumber(minNumLength, maxNumLength, random);
    String num4 = _generateRandomNumber(minNumLength, maxNumLength, random);

    // Construct the IPv4 address
    String ipv4 = '$num1.$num2.$num3.$num4';

    return ipv4;
  }

// Helper function to generate a random number with specified length
  static String _generateRandomNumber(
      int minNumLength, int maxNumLength, Random random) {
    int numLength =
        random.nextInt(maxNumLength - minNumLength + 1) + minNumLength;
    String number = '';
    for (int i = 0; i < numLength; i++) {
      number += random.nextInt(10).toString();
    }
    return number;
  }

  static String randomIpv6() {
    Random random = Random();

    // Generate eight random groups of four hexadecimal digits
    List<String> groups = [];
    for (int i = 0; i < 8; i++) {
      String group = '';
      for (int j = 0; j < 4; j++) {
        group += random
            .nextInt(16)
            .toRadixString(16); // Generate a random hexadecimal digit
      }
      groups.add(group);
    }

    // Construct the IPv6 address
    String ipv6 = groups.join(':');

    return ipv6;
  }

  static String randomUrl() {
    // Define the length of the domain part
    const int domainLength = 10; // Adjust as needed

    Random random = Random();

    // Define characters allowed in a domain name
    const String domainChars = 'abcdefghijklmnopqrstuvwxyz0123456789-';

    // Generate a random domain name
    String domain = '';
    for (int i = 0; i < domainLength; i++) {
      domain += domainChars[random.nextInt(domainChars.length)];
    }

    // Add protocol and top-level domain (TLD)
    String protocol = (random.nextBool()) ? 'http://' : 'https://';
    String tld = ['.com', '.net', '.org'][random.nextInt(3)];

    return protocol + domain + tld;
  }

  // Generate a random UUID (Universally Unique Identifier) in the format xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
  static String randomUuid() {
    const List<String> hexChars = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f'
    ];
    Random random = Random();

    String uuid = '';
    for (int i = 0; i < 36; i++) {
      if (i == 8 || i == 13 || i == 18 || i == 23) {
        uuid += '-';
      } else if (i == 14) {
        uuid += '4'; // Version 4 UUID
      } else if (i == 19) {
        uuid += hexChars[
            random.nextInt(4) + 8]; // Randomly select from 8, 9, a, or b
      } else {
        uuid += hexChars[random.nextInt(16)];
      }
    }

    return uuid;
  }

  static bool randomBool() {
    Random random = Random();
    return random.nextBool();
  }

  static String randomRgbColor() {
    Random random = Random();
    int r = random.nextInt(256);
    int g = random.nextInt(256);
    int b = random.nextInt(256);
    return 'rgb($r, $g, $b)';
  }

  static String randomHexColor() {
    Random random = Random();
    int r = random.nextInt(256);
    int g = random.nextInt(256);
    int b = random.nextInt(256);
    return '#${r.toRadixString(16)}${g.toRadixString(16)}${b.toRadixString(16)}';
  }

  static String randomFileName({int length = 10}) {
    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    Random random = Random();
    String fileName = '';
    for (int i = 0; i < length; i++) {
      fileName += chars[random.nextInt(chars.length)];
    }
    return fileName;
  }

  static String randomFilePath({int segments = 3}) {
    String filePath = '';
    for (int i = 0; i < segments; i++) {
      filePath += '/${randomFileName()}';
    }
    return filePath;
  }

  static String randomMacAddress() {
    Random random = Random();
    String macAddress = '';
    for (int i = 0; i < 6; i++) {
      macAddress += random.nextInt(256).toRadixString(16).padLeft(2, '0');
      if (i < 5) {
        macAddress += ':';
      }
    }
    return macAddress;
  }

  static String randomUserAgent() {
    const List<String> browsers = [
      'Chrome',
      'Firefox',
      'Safari',
      'Edge',
      'Opera',
      'Internet Explorer'
    ];
    const List<String> os = ['Windows', 'Mac OS', 'Linux', 'Android', 'iOS'];
    Random random = Random();
    String browser = browsers[random.nextInt(browsers.length)];
    String osName = os[random.nextInt(os.length)];
    String version = '${random.nextInt(10)}.${random.nextInt(10)}';
    return '$browser/$version ($osName)';
  }

  //radmom profile picture from ui-avatars.com
  static Image randomAvatarImage({
    required String name,
    String? size,
  }) {
    // Encode the name to include in the URL
    String encodedName = Uri.encodeComponent(name);

    // Construct the URL for the avatar image
    String imageUrl =
        'https://ui-avatars.com/api/?background=random&color=fff&name=$encodedName&size=$size';

    // Return an Image widget with the avatar image
    return Image.network(imageUrl);
  }

  // Generate a random Image from local assets folder no need to add the image to pubspec.yaml file . no need to add paramenter

  //radmom profile picture from ui-avatars.com

  static Image randomFaceAvatar({
    required ImageType imageType,
    double? size,
  }) {
    List<String> imagesURL = [
      for (int i = 1; i <= 10; i++)
        'https://mighty.tools/mockmind-api/content/${imageType.toString().split('.').last}/$i.jpg'
    ];

    Random random = Random();
    String imageUrl = imagesURL[random.nextInt(imagesURL.length)];

    return Image.network(
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        }
      },
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.error);
      },
      imageUrl,
      width: size,
      height: size,
    );
  }
}
