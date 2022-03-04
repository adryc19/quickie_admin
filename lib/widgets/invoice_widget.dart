// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class InvoiceWidget extends StatelessWidget {
  dynamic sender;
  dynamic activity;
  dynamic message;
  dynamic amount;
  dynamic date;

  InvoiceWidget(
    this.sender,
    this.activity,
    this.message,
    this.amount,
    this.date,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    sender,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(activity),
                        SizedBox(height: 5),
                        Text(message),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(amount),
                      SizedBox(height: 5),
                      Text(date),
                    ],
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 2,
        ),
      ],
    );
  }
}
