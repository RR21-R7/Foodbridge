import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VolunteerScreen extends StatefulWidget {
  @override
  _VolunteerScreenState createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  String? selectedFoodBank;
  final List<String> foodBanks = [
    'Klang Food Bank',
    'Yayasan Food Bank',
    'PJ City Food Bank',
    'Pemurah Food Bank',
    'Muhibbah Food Bank',
    '448 Food Bank',
  ];

  final TextEditingController additionalDetailsController = TextEditingController();

  void _showVolunteerPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Volunteer Verification'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'A verification email will be sent. Please provide any additional details below.'),
            SizedBox(height: 12),
            TextField(
              controller: additionalDetailsController,
              decoration: InputDecoration(
                labelText: 'Additional Details',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                selectedFoodBank = null;
                additionalDetailsController.clear();
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Thank you for volunteering!')),
              );
            },
            child: Text('Submit'),
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
        title: Text('Volunteer'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Volunteer for a Food Bank',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text('Select Food Bank:'),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedFoodBank,
              hint: Text('Choose a Food Bank to Volunteer'),
              items: foodBanks.map((String foodBank) {
                return DropdownMenuItem<String>(
                  value: foodBank,
                  child: Text(foodBank),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFoodBank = value!;
                  _showVolunteerPopup();
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
          ],
        ),
      ),
    );
  }
}
