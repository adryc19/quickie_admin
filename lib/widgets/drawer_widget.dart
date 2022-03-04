// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qadmin/forms/about_form.dart';
import 'package:qadmin/forms/help_form.dart';
import 'package:qadmin/functions.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                color: Colors.orange.shade900,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 15),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userData!["name"],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              userData!["organization"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              userData!["year"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AboutForm.id);
                },
                child: ListTile(
                  title: Text("About"),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HelpForm.id);
                },
                child: ListTile(
                  title: Text("Help"),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  functions.signOut(context);
                },
                child: ListTile(
                  title: Text(
                    "Sign out",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
