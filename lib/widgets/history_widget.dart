// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  dynamic activity;
  dynamic name;
  dynamic subject;
  dynamic message;
  dynamic mode;
  dynamic date;

  HistoryWidget(
    this.activity,
    this.name,
    this.subject,
    this.message,
    this.mode,
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
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(subject),
                        SizedBox(height: 3),
                        Text(name),
                        SizedBox(height: 3),
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
                      Text(""),
                      SizedBox(height: 5),
                      Text(mode),
                      SizedBox(height: 5),
                      Text(date),
                      SizedBox(height: 5),
                      Text(""),
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
