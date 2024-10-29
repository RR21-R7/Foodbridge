import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FoodBank.dart';

class FoodBankDetailScreen extends StatelessWidget {
  final FoodBank foodBank;

  FoodBankDetailScreen({required this.foodBank});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodBank.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodBank.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Address: ${foodBank.address}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Available Foods:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: foodBank.availableFoods.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.food_bank),
                    title: Text(foodBank.availableFoods[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
