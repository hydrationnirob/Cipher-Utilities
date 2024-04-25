import 'package:flutter/material.dart';
import 'package:cipher_utilities/cipher_utilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Examplescreen(),
    );
  }
}





class Examplescreen extends StatelessWidget {

  String password = Cipher.encryptPassword('mySuperSecretPassword');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Data Generator'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Password Encryption Usage'),
            _buildPasswordEncryptionUsage(),
            const SizedBox(height: 20),
            _buildSectionTitle('Random Text Usage'),
            _buildRandomTextUsage(),
            const SizedBox(height: 20),
            _buildSectionTitle('Random Avatar Usage'),
            _buildAvatarUsage(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPasswordEncryptionUsage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Encrypted Password: $password'),
        Text('Decrypted Password: ${Cipher.decryptPassword( password)}'),
        Text('Is "Str0ngP@ssw0rd" a strong password? ${Cipher.isStrongPassword(
            'Str0ngP@ssw0rd')}'),
        Text('Random Key: ${Cipher.generateRandomKey()}'),
        Text('Random Password: ${Cipher.generateRandomPassword()}'),
      ],
    );
  }

  Widget _buildRandomTextUsage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Random Text: ${Cipher.randomText(length: 10)}'),
        Text('Random Email: ${Cipher.randomEmail(length: 8)}'),
        Text('Random Name: ${Cipher.randomName()}'),
        Text('Random Address: ${Cipher.randomAddress()}'),
        Text('Random Phone: ${Cipher.randomPhone(length: 10)}'),
        Text('Random Date: ${Cipher.randomDate()}'),
        Text('Random Time: ${Cipher.randomTime()}'),
        Text('Random DateTime: ${Cipher.randomDateTime()}'),
        Text('Random Paragraph: ${Cipher.randomParagraph(minWordsPerLine: 5,
            maxWordsPerLine: 10,
            minSentences: 3,
            maxSentences: 5)}'),
        Text('Random IPv4: ${Cipher.randomIpv4()}'),
        Text('Random IPv6: ${Cipher.randomIpv6()}'),
        Text('Random URL: ${Cipher.randomUrl()}'),
        Text('Random UUID: ${Cipher.randomUuid()}'),
        Text('Random Boolean: ${Cipher.randomBool()}'),
        Row(
          children: [
            Container(
              color: Cipher.randomRgbColor(),
              width: 100,
              height: 100,
            ),
            Container(
              color: Cipher.randomRgbColor(),
              width: 100,
              height: 100,
            ),
            Container(
              color: Cipher.randomRgbColor(),
              width: 100,
              height: 100,
            ),
          ],
        ),

        Text('Random File Name: ${Cipher.randomFileName()}'),
        Text('Random File Path: ${Cipher.randomFilePath(segments: 4)}'),
        Text('Random MAC Address: ${Cipher.randomMacAddress()}'),
        Text('Random User Agent: ${Cipher.randomUserAgent()}'),
      ],
    );
  }

  _buildAvatarUsage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Cipher.randomFaceAvatar(imageType: ImageType.cartoon),
            Cipher.randomFaceAvatar(imageType: ImageType.human),
            Cipher.randomFaceAvatar(imageType: ImageType.alien),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Cipher.randomAvatarImage(name: 'John Doe',size: '100'),
            Cipher.randomAvatarImage(name: 'Rkok mia',size: '100'),
            Cipher.randomAvatarImage(name: 'Kudis Alo',size: '100'),
          ],
        ),


      ],
    );
  }

}

