
import 'package:chiper_texter/FlutterForge.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  static String Rabtext = RandomForge.randomPhone(length: 10);
    String? Rabtext2 = EncryptForge.encryptPassword("Hello World");
    String ispassword = EncryptForge.isStrongPassword("Hello World").toString();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text(Rabtext),
            Text(Rabtext2 ?? "Error Decrypting"),
            Text(ispassword),
            RandomForge.randomFaceAvatar(imageType: ImageType.alien),




          ],
        ),
      ),
    );
  }
}
