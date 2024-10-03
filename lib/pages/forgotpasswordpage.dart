import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Menyesuaikan lebar tombol dan elemen lainnya berdasarkan ukuran layar
    double buttonWidth = screenWidth * 0.8;
    double imageSize= screenWidth * 0.6;
    double textSize = screenWidth * 0.09;
    double subtitleSize = screenWidth * 0.035;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffe0c2a7),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Color(0xFF59422E),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(0xffe0c2a7),
        child: Column(
          children: [
           Image.asset('assets/willbesoon.png')
          ],
        ),
      ),
    );
  }
}
