// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class HelpForm extends StatelessWidget {
  static String id = "HelpForm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Text("Help"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset("assets/q.png", height: 200),
            SizedBox(
              child: SizedBox(height: 75),
            ),
            Text(
              "Need help?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Email us:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "quickieteam@gmail.com:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Contact us:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "+63 970 837 4139",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
