import 'package:flutter/material.dart';
import 'package:wikusama_cafe/pages/Cashier/homepage.dart';
import 'package:wikusama_cafe/pages/privacypolicy.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Menyesuaikan lebar tombol dan elemen lainnya berdasarkan ukuran layar
    double buttonWidth = screenWidth * 0.8;
    double imageSize = screenWidth * 0.6;
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
        color: const Color(0xffe0c2a7),
        child: Column(
          children: [
            Image.asset(
              'assets/dome.png',
              width: imageSize,
              height: imageSize,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              'Account Created!',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.normal,
                  color: const Color(0xFF59422E),
                  fontSize: textSize,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: screenHeight * 0.008,
            ),
            Column(
              children: [
                Text(
                  'Your account has been created successfully.',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF59422E),
                    fontSize: subtitleSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Press continue to start using app.',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF59422E),
                    fontSize: subtitleSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.08),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
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
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                  ),
                )),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Column(
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'By clicking start, you agree to our ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF59422E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivasiPolicy()),
                    );
                    // Add your navigation or action here
                  },
                  child: const Text(
                    'Privacy Policy and Terms and Conditions',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF59422E),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
