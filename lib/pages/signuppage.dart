import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
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
        color: Color(0xffe0c2a7),
        child:Column(
          children: [

            //Text
            Text('Welcome!',style: TextStyle(
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                color: const Color(0xFF59422E),
                fontSize: textSize,
                fontWeight: FontWeight.w800),),

            SizedBox(height: screenHeight * 0.005,),

            Column(
              children: [
                Text(
                  'Please provide following',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF59422E),
                    fontSize: subtitleSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'details for your new account.',
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


            //Button

            Column(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
