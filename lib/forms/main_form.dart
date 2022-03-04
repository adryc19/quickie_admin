// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qadmin/forms/history_form.dart';
import 'package:qadmin/forms/invoices_form.dart';
import 'package:qadmin/forms/update_form.dart';
import 'package:qadmin/functions.dart';
import 'package:qadmin/widgets/drawer_widget.dart';

class MainForm extends StatelessWidget {
  static String id = "MainForm";

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        leading: IconButton(
          onPressed: () async {
            functions.getCurrentUser();
            DocumentSnapshot data =
                await fbStore.collection("Users").doc(quickieUser!.email).get();
            userData = data;
            _key.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        title: Image.asset(
          "assets/q.png",
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    functions.getCurrentUser();
                    DocumentSnapshot data = await fbStore
                        .collection("Users")
                        .doc(quickieUser!.email)
                        .get();
                    userData = data;
                    Navigator.pushNamed(context, InvoicesForm.id);
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.orange.shade300,
                        child: Icon(
                          Icons.request_page_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Invoices",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    functions.getCurrentUser();
                    DocumentSnapshot data = await fbStore
                        .collection("Users")
                        .doc(quickieUser!.email)
                        .get();
                    userData = data;
                    Navigator.pushNamed(context, UpdateForm.id);
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.orange.shade300,
                        child: Icon(
                          Icons.edit_notifications_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Update",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    functions.getCurrentUser();
                    DocumentSnapshot data = await fbStore
                        .collection("Users")
                        .doc(quickieUser!.email)
                        .get();
                    userData = data;
                    Navigator.pushNamed(context, HistoryForm.id);
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.orange.shade300,
                        child: Icon(
                          Icons.mark_email_read_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 80,
                color: Colors.black.withOpacity(.1),
                child: Center(
                  child: Text("More features coming soon!"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
