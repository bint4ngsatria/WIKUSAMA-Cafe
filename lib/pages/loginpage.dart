import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wikusama_cafe/pages/Cashier/homepage.dart';
import 'dart:convert';
import 'package:wikusama_cafe/pages/forgotpasswordpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonWidth = screenWidth * 0.8;
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
      body: SingleChildScrollView(
        child:
      Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(0xffe0c2a7),
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.normal,
                  color: const Color(0xFF59422E),
                  fontSize: textSize,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: screenHeight * 0.005),
            Text(
              'Sign In to Continue.',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.normal,
                  color: const Color(0xFF59422E),
                  fontSize: subtitleSize,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: screenHeight * 0.08),
            Column(
              children: [
                Form(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: buttonWidth * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF0E0D3),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color(0xff805F43)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person, color: Color(0xff805F43)),
                              labelStyle: TextStyle(
                                color: Color(0xFF463323),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                              ),
                              hintText: 'Enter your username or email',
                              hintStyle: TextStyle(
                                color: Color(0xffA67C58),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF0E0D3),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Color(0xff805F43)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Color(0xff805F43)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                  color: Color(0xff805F43),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xFF463323),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                              ),
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(
                                color: Color(0xffA67C58),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            obscureText: !_isPasswordVisible,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.010),
            Container(
              margin: EdgeInsets.symmetric(horizontal: buttonWidth * 0.1),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgotpassword()),);
                  },
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF59422E),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  HomePage()),);
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
          )
          ],
        ),
      ),
      ),
    );
  }
}