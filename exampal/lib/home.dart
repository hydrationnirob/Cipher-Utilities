import 'package:flutter/material.dart';
import 'package:Flutter_Forge/FlutterForge.dart';

class RandomDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Data Generator'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Password Encryption Usage'),
            _buildPasswordEncryptionUsage(),
            SizedBox(height: 20),
            _buildSectionTitle('Random Text Usage'),
            _buildRandomTextUsage(),
            SizedBox(height: 20),
            _buildSectionTitle('Random Avatar Usage'),
            _buildRandomAvatarUsage(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPasswordEncryptionUsage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Encrypted Password: ${Cipher.encryptPassword('mySuperSecretPassword')}'),
        Text('Decrypted Password: ${Cipher.decryptPassword('encryptedPassword')}'),
        Text('Is "Str0ngP@ssw0rd" a strong password? ${Cipher.isStrongPassword('Str0ngP@ssw0rd')}'),
        Text('Random Key: ${Cipher.generateRandomKey()}'),
        Text('Random Password: ${Cipher.generateRandomPassword()}'),
      ],
    );
  }

  Widget _buildRandomTextUsage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Random Text: ${Cipher.randomText(length: 20)}'),
        Text('Random Email: ${Cipher.randomEmail(length: 8)}'),
        Text('Random Name: ${Cipher.randomName()}'),
        Text('Random Address: ${Cipher.randomAddress()}'),
        Text('Random Phone: ${Cipher.randomPhone(length: 10)}'),
        Text('Random Date: ${Cipher.randomDate()}'),
        Text('Random Time: ${Cipher.randomTime()}'),
        Text('Random DateTime: ${Cipher.randomDateTime()}'),
        Text('Random Paragraph: ${Cipher.randomParagraph(minWordsPerLine: 5, maxWordsPerLine: 10, minSentences: 3, maxSentences: 5)}'),
        Text('Random IPv4: ${Cipher.randomIpv4()}'),
        Text('Random IPv6: ${Cipher.randomIpv6()}'),
        Text('Random URL: ${Cipher.randomUrl()}'),
        Text('Random UUID: ${Cipher.randomUuid()}'),
        Text('Random Boolean: ${Cipher.randomBool()}'),
        Text('Random RGB Color: ${Cipher.randomRgbColor()}'),
        Text('Random Hexadecimal Color: ${Cipher.randomHexColor()}'),
        Text('Random File Name: ${Cipher.randomFileName()}'),
        Text('Random File Path: ${Cipher.randomFilePath(segments: 4)}'),
        Text('Random MAC Address: ${Cipher.randomMacAddress()}'),
        Text('Random User Agent: ${Cipher.randomUserAgent()}'),
      ],
    );
  }
