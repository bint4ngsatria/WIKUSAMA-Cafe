import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {


    // Mendapatkan ukuran layar
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
        child: const SingleChildScrollView(
          child: Column(
            children: [
              //Text Welcome
              Column(
                children: [
                  Text('Welcome !!',
                  )


                ],
              ),


              //Search Bar
              Padding(padding: 
              EdgeInsets.all(16)
              
              ),



            ],
          ),
        ),
        // child: Column(
        //   children: [Image.asset('assets/willbesoon.png')],
        // ),
      ),
    );
  }


}
