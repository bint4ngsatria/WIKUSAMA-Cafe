import 'package:flutter/material.dart';
import 'package:wikusama_cafe/pages/loginpage.dart';
import 'package:wikusama_cafe/pages/signuppage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(hexColor('e0c2a7')),
        child: Column(
          children: [

            // Title Text
            Text(
              'WIKUSAMA Cafe',
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.w800,
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                color: const Color(0xFF59422E),
              ),
            ),

            SizedBox(height: screenHeight * 0.005),
            // Subtitle Text
            Text(
              'Widyaloka Kusuma Samekta Makarya',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: subtitleSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w500,
                color: const Color(0xFf805F43),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.08),

            // Image
            Image.asset(
              'assets/intropage.png',
              width: imageSize,
              height: imageSize,
            ),

            SizedBox(height: screenHeight * 0.10),

            // Sign In Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()),);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFFF5EBE2),
                backgroundColor: const Color(0xFF805F43),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(buttonWidth, 60),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lato',
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signuppage()),);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFF805F43),
                backgroundColor: const Color(0xFFF5EBE2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(buttonWidth, 60),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lato',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Image.asset('assets/wikusamalogi.png',
              width: 100,
              height: 60,
              )
          ],
        ),
      ),
    );
  }

  int hexColor(String color) {
    //adding prefix
    String newColor = '0xff$color';
    //removing # sign
    newColor = newColor.replaceAll('#', '');
    //converting it to the integer
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}
