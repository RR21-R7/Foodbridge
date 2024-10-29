import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  String? selectedFoodBank;
  String? selectedFoodItem;

  final List<String> foodItems = [
    'Rice',
    'Beans',
    'Bread',
    'Canned Vegetables',
    'Milk',
    'Pasta',
    'Fruits',
    'Juice',
  ];

  final List<String> foodBanks = [
    'Klang Food Bank',
    'Yayasan Food Bank',
    'PJ City Food Bank',
    'Pemurah Food Bank',
    'Muhibbah Food Bank',
    '448 Food Bank',
  ];

  void _showDonationPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Donation in Progress'),
        content: Text(
            'Thank you for your donation! Your donation is in progress and you will be contacted through email.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                // Reset the selections after donation
                selectedFoodBank = null;
                selectedFoodItem = null;
              });
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Donate Food'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donate to a Food Bank',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text('Select Food Bank:'),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedFoodBank,
              hint: Text('Choose a Food Bank'),
              items: foodBanks.map((String foodBank) {
                return DropdownMenuItem<String>(
                  value: foodBank,
                  child: Text(foodBank),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFoodBank = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),

            Text('Select Food Item:'),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedFoodItem,
              hint: Text('Choose an Item to Donate'),
              items: foodItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFoodItem = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 24),

            // Donate Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (selectedFoodBank != null && selectedFoodItem != null) {
                    _showDonationPopup();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Please select both a food bank and an item to donate.'),
                      ),
                    );
                  }
                },
                child: Text('Donate'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
