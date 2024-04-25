
![Logo](https://raw.githubusercontent.com/hydrationnirob/Cipher-Utilities/main/logo.png)


# Cipher Utilities

"Cipher Utilities" is a utility package designed to assist developers in building Flutter applications more efficiently. It likely provides various tools, utilities, or functionalities that simplify common tasks, enhance productivity, or improve the overall development experience in Flutter.


## Authors

- [@rakibullhaque](https://github.com/hydrationnirob)


## Installation 💻

install via ``` flutter pub add: ```

```bash
  dart pub add cipher utilities
```
or add into your pubspec.yaml

```cipher utilities : #latest version```
    
## Screenshots

![App Screenshot](https://raw.githubusercontent.com/hydrationnirob/Cipher-Utilities/main/Screenshot%202024-04-25%20144255.png)


## Features

- Random text generation
- Random email generation
- Random name generation
- Random address generation
- Random phone number generation
- Random date and time generation
- Random paragraph generation
- Random IPv4 and IPv6 address generation
- Random URL generation
- Random UUID generation
- Random boolean generation
- Random RGB and hexadecimal color generation
- Random file name and file path generation
- Random MAC address generation
- Random user agent generation
- Random avatar image generation
- Random face avatar image generation
- Password encryption and decryption
- Password strength checking
- Random key generation
- Random password generation


## Password-Encryption Usage

```dart
 // Example usage of password encryption and decryption
  String password = 'mySuperSecretPassword';

  // Encrypt the password
  String encryptedPassword = Cipher.encryptPassword(password);
  print('Encrypted Password: $encryptedPassword');

  // Decrypt the encrypted password
  String decryptedPassword = Cipher.decryptPassword(encryptedPassword);
  print('Decrypted Password: $decryptedPassword');

  // Check if a password is strong
  String strongPassword = 'Str0ngP@ssw0rd';
  print('Is "$strongPassword" a strong password? ${Cipher.isStrongPassword(strongPassword)}');

  // Generate a random key
  String randomKey = Cipher.generateRandomKey();
  print('Random Key: $randomKey');

  // Generate a random password
  String randomPassword = Cipher.generateRandomPassword();
  print('Random Password: $randomPassword');

```
## Random-text Usage

```dart
    String randomText = Cipher.randomText(length: 20);
  print('Random Text: $randomText');

  // Generate random email
  String randomEmail = Cipher.randomEmail(length: 8);
  print('Random Email: $randomEmail');

  // Generate random name
  String randomName = Cipher.randomName();
  print('Random Name: $randomName');

  // Generate random address
  String randomAddress = Cipher.randomAddress();
  print('Random Address: $randomAddress');

  // Generate random phone number
  String randomPhone = Cipher.randomPhone(length: 10);
  print('Random Phone: $randomPhone');

  // Generate random date
  String randomDate = Cipher.randomDate();
  print('Random Date: $randomDate');

  // Generate random time
  String randomTime = Cipher.randomTime();
  print('Random Time: $randomTime');

  // Generate random date and time
  String randomDateTime = Cipher.randomDateTime();
  print('Random DateTime: $randomDateTime');

  // Generate random paragraph
  String randomParagraph = Cipher.randomParagraph(
    minWordsPerLine: 5,
    maxWordsPerLine: 10,
    minSentences: 3,
    maxSentences: 5,
  );
  print('Random Paragraph: $randomParagraph');

  // Generate random IPv4 address
  String randomIpv4 = Cipher.randomIpv4();
  print('Random IPv4: $randomIpv4');

  // Generate random IPv6 address
  String randomIpv6 = Cipher.randomIpv6();
  print('Random IPv6: $randomIpv6');

  // Generate random URL
  String randomUrl = Cipher.randomUrl();
  print('Random URL: $randomUrl');

  // Generate random UUID
  String randomUuid = Cipher.randomUuid();
  print('Random UUID: $randomUuid');

  // Generate random boolean value
  bool randomBool = Cipher.randomBool();
  print('Random Boolean: $randomBool');

  // Generate random RGB color
  String randomRgbColor = Cipher.randomRgbColor();
  print('Random RGB Color: $randomRgbColor');

  // Generate random hexadecimal color
  String randomHexColor = Cipher.randomHexColor();
  print('Random Hexadecimal Color: $randomHexColor');

  // Generate random file name
  String randomFileName = Cipher.randomFileName();
  print('Random File Name: $randomFileName');

  // Generate random file path
  String randomFilePath = Cipher.randomFilePath(segments: 4);
  print('Random File Path: $randomFilePath');

  // Generate random MAC address
  String randomMacAddress = Cipher.randomMacAddress();
  print('Random MAC Address: $randomMacAddress');

  // Generate random user agent
  String randomUserAgent = Cipher.randomUserAgent();
  print('Random User Agent: $randomUserAgent');
```
## Random-Avatar Usage
```dart
// Generate a random face avatar
  Image randomAvatar = Cipher.randomFaceAvatar(
    imageType: ImageType.person, // Specify the type of image (e.g., person,carton,robot)
    size: 200, // Specify the size of the image (optional)
  );
// print a image into the screen that 
 Cipher.randomFaceAvatar(imageType: ImageType.cartoon),

  // Display the generated avatar
  // Note: You need to use this Image widget within a Flutter widget tree
  // (e.g., inside a StatelessWidget or a StatefulWidget)
  // For demonstration purposes, here we are just printing the image URL.
  print('Random Avatar URL: ${randomAvatar.image.toString()}');


   // Generate a random Text avatar image
  Image randomAvatar = Cipher.randomAvatarImage(
    name: 'John Doe', // Specify the name for the avatar
    size: '200', // Specify the size of the image (optional)
  );

  // Display the generated avatar
  // Note: You need to use this Image widget within a Flutter widget tree
  // (e.g., inside a StatelessWidget or a StatefulWidget)
  // For demonstration purposes, here we are just printing the image URL.
  print('Random Avatar URL: ${randomAvatar.image.toString()}');
  Cipher.randomAvatarImage(name: 'John Doe',size: '100'),
```



## Feedback

If you have any feedback, please reach out to us at rakibullhaques@gmail.com


## 🚀 About Me
I'm a full stack developer...


## Demo

https://github.com/hydrationnirob/Cipher-Utilities.git

