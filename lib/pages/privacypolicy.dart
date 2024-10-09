import 'package:flutter/material.dart';

class PrivasiPolicy extends StatelessWidget {
  const PrivasiPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textSize = screenWidth * 0.09;
    double subtitleSize = screenWidth * 0.035;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe0c2a7),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xffe0c2a7),
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF59422E),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'At Wikusama Cafe, we are committed to protecting the privacy of our users and ensuring that any personal information collected through our system is secure. This Privacy Policy explains how we collect, use, and safeguard the data of cashiers, managers, admins, and customers in our cashier system.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '1. User Data',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- All user data (cashier, manager, admin) is securely stored within our system.\n'
                  '- User data is only used for system purposes, including managing transactions, user roles, and monitoring.\n'
                  '- Admins have the ability to manage user data, including assigning roles such as cashier, manager, or admin.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '2. Transaction Data',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- The system records all transaction data, including orders, payment details, and transaction history.\n'
                  '- Transaction data is used to generate receipts for customers and to allow managers to monitor business performance.\n'
                  '- The system only accepts cash payments. No sensitive financial data, such as credit card details, are collected or stored.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '3. Data Access and Management',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- Admins have access to manage user roles, food and drink menus, and table data.\n'
                  '- Managers have access to view transaction data and can filter this data by date to monitor cafe performance.\n'
                  '- Cashiers can only view and manage their own transaction data and handle customer orders.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '4. Security',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- We take appropriate security measures to ensure that all data is protected from unauthorized access or disclosure.\n'
                  '- Only authorized users (cashiers, managers, admins) can access the system, and each user is assigned specific permissions based on their role.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '5. Data Retention',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- Transaction data and user data are retained for the purpose of record-keeping and business analysis.\n'
                  '- Data is securely stored and will not be shared with third parties.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  '6. Customer Information',
                  style: TextStyle(
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 8),
                Text(
                  '- The system assigns table numbers for easier tracking of customer orders, but does not store personal customer information.\n'
                  '- Customers are not required to provide personal information when making an order.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
                const SizedBox(height: 16),
                Text(
                  'By using the Wikusama Cafe cashier system, users agree to the terms of this Privacy Policy. We are committed to keeping user and transaction data safe and secure.',
                  style: TextStyle(
                      fontSize: subtitleSize, color: const Color(0xFF59422E)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
