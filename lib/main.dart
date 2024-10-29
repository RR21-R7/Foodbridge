import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() {
  runApp(FoodBankApp());
}

class FoodBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Bank App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}